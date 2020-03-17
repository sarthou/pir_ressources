#include <string>
#include <vector>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <regex>

#include "pir_ressources/Parameters.h"

struct annotation_t
{
  size_t timestamp_start;
  size_t timestamp_end;
  std::string activity;
};

std::vector<annotation_t> getAnnotations(const std::string& path)
{
  std::vector<annotation_t> annotations;

  std::ifstream file(path);
  if(file.is_open())
  {
    annotation_t tmp_annotation;
    while (file >> tmp_annotation.timestamp_start >> tmp_annotation.timestamp_end >> tmp_annotation.activity)
    {
      annotations.push_back(tmp_annotation);
    }
    file.close();
  }
  else
    std::cout << "[ERROR] Can not open file: " << path << std::endl;

  return annotations;
}

bool sortFunction(const annotation_t& a1, const annotation_t& a2)
{
  return a1.timestamp_start < a2.timestamp_start;
}

void removeHighLevelActivities(std::vector<annotation_t>& annotations)
{
  std::vector<std::string> high_level_activities = {"cut_and_mix_ingredients",
                                                    "prepare_dressing",
                                                    "serve_salad"};

  for(std::vector<annotation_t>::iterator it = annotations.begin(); it != annotations.end(); )
  {
    if(std::find(high_level_activities.begin(), high_level_activities.end(), it->activity) != high_level_activities.end())
      annotations.erase(it);
    else
      ++it;
  }
}

void removePhases(std::vector<annotation_t>& annotations)
{
  std::vector<std::string> phases = {"_prep",
                                     "_core",
                                     "_post"};

  for(auto& annotation : annotations)
  {
    for(auto& phase : phases)
    {
      size_t pose = annotation.activity.find(phase);
      if(pose != std::string::npos)
        annotation.activity = annotation.activity.substr(0, pose);
    }
  }
}

void removeDoubles(std::vector<annotation_t>& annotations)
{
  std::string prev = "";
  for(std::vector<annotation_t>::iterator it = annotations.begin(); it != annotations.end(); )
  {
    if(prev == it->activity)
      annotations.erase(it);
    else
    {
      prev = it->activity;
      ++it;
    }
  }
}

void setAsTriplets(std::vector<annotation_t>& annotations)
{
  std::regex regex = std::regex("(cut_and_mix|cut|place|add|mix|peel|serve|prepare)_([^_]+)(.*)");

  std::smatch match;
  for(auto& annotation : annotations)
  {
    if(std::regex_match(annotation.activity, match, regex))
      annotation.activity = "bob " + match[1].str() + match[3].str() + " " + match[2].str();
  }
}

void writeToFile(const std::string& path, const std::vector<annotation_t>& annotations)
{
  std::ofstream file;
  file.open(path);
  if (file.is_open())
  {
    for(auto& annotation : annotations)
      file << annotation.timestamp_start << " " << annotation.activity << std::endl;
    file.close();
    std::cout << "--> File saved at : " << path << std::endl;
  }
  else
    std::cout << "[ERROR] Can not open file: " << path << std::endl;
}

std::string getFileName(const std::string& original_path)
{
  std::string new_path = original_path;

  size_t dot_pose = std::string::npos;
  size_t pose = std::string::npos;
  for(size_t i = 0; i < new_path.size(); i++)
  {
    if(new_path[i] == '.')
      dot_pose = i;
    else if(new_path[i] == '/')
      pose = i;
  }

  if(pose == std::string::npos)
  {
    if(dot_pose == std::string::npos)
      new_path += "_arranged.txt";
    else
      new_path.replace(dot_pose, new_path.size() - dot_pose, "_arranged.txt");
  }
  else
  {
    if(dot_pose == std::string::npos)
      new_path += "_arranged.txt";
    else if(dot_pose > pose)
      new_path.replace(dot_pose, new_path.size() - dot_pose, "_arranged.txt");
    else
      new_path += "_arranged.txt";
  }

  return new_path;
}

int main(int argc, char** argv)
{
  Parameters params;
  params.insert(Parameter("high_level_activities", {"-h", "--high_level"}, {"false"}));
  params.insert(Parameter("phases", {"-p", "--phases"}, {"false"}));
  params.insert(Parameter("triplets", {"-t", "--triplets"}, {"false"}));
  params.insert(Parameter("output", {"-o", "--output"}));
  params.insert(Parameter("path", {}));

  params.set(argc, argv);
  params.display();

  std::string file_path = params.parameters_.at("path").getFirst();
  if(file_path == "")
  {
    std::cout << "No input file provided" << std::endl;
    return -1;
  }

  auto annotations = getAnnotations(file_path);
  std::sort(annotations.begin(), annotations.end(), sortFunction);

  if(params.parameters_.at("high_level_activities").getFirst() == "false")
    removeHighLevelActivities(annotations);

  if(params.parameters_.at("phases").getFirst() == "false")
    removePhases(annotations);

  removeDoubles(annotations);

  if(params.parameters_.at("triplets").getFirst() != "false")
    setAsTriplets(annotations);

  for(auto& annotation : annotations)
    std::cout << annotation.timestamp_start << " : " << annotation.activity << std::endl;

  std::string output_path = params.parameters_.at("output").getFirst();
  if(output_path == "")
    output_path = getFileName(file_path);

  writeToFile(output_path, annotations);

  return 0;
}
