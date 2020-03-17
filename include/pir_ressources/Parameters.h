#ifndef PARAMETERS_H
#define PARAMETERS_H

#include <unordered_map>
#include <vector>
#include <string>
#include <iostream>

class Parameter
{
public:
  std::string name_;
  std::vector<std::string> options_;
  std::vector<std::string> values_;
  std::vector<std::string> default_values_;

  Parameter(const std::string& name, const std::vector<std::string>& options, const std::vector<std::string>& default_values = {})
  {
    name_ = name;
    options_ = options;
    default_values_ = default_values;
  }

  Parameter(const Parameter& other)
  {
    name_ = other.name_;
    options_ = other.options_;
    values_ = other.values_;
    default_values_ = other.default_values_;
  }

  void insert(const std::string& value) { values_.push_back(value); }

  std::string getFirst()
  {
    if(values_.size() == 0)
      return (default_values_.size() ? default_values_[0] : "");
    else
      return (values_.size() ? values_[0] : "");
  }

  std::vector<std::string> get()
  {
    if(values_.size() == 0)
      return default_values_;
    else
      return values_;
  }

  bool testOption(const std::string& option)
  {
    for(auto op : options_)
      if(option == op)
        return true;
    return false;
  }

  void display()
  {
    std::cout << name_ << ":";

    if(values_.size())
    {
      for(auto value : values_)
        std::cout << "\t- " << value << std::endl;
    }
    else if(default_values_.size())
    {
      for(auto value : default_values_)
        std::cout << "\t- " << value << std::endl;
    }
    else
      std::cout << std::endl;
  }
};

class Parameters
{
public:
  std::unordered_map<std::string, Parameter> parameters_;
private:
  std::string default_param_name_;

public:

  void insert(const Parameter& param)
  {
    parameters_.insert(std::pair<std::string, Parameter>(param.name_,param));
    if(param.options_.size() == 0)
      default_param_name_ = param.name_;
  }

  void set(int argc, char** argv)
  {
    for(size_t i = 1; i < (size_t)argc; i++)
    {
      if(argv[i][0] == '-')
      {
        std::string param_name = "";
        for(auto param : parameters_)
          if(param.second.testOption(std::string(argv[i])))
          {
            param_name = param.second.name_;
            break;
          }

        if(param_name == "")
          std::cout << "[WARNING] unknow option " << std::string(argv[i]) << std::endl;
        else
        {
          if(i+1 < (size_t)argc)
          {
            i++;
            parameters_.at(param_name).insert(std::string(argv[i]));
          }
        }
      }
      else
      {
        if(default_param_name_ != "")
          parameters_.at(default_param_name_).insert(std::string(argv[i]));
        else
          std::cout << "[WARNING] No default parameter" << std::endl;
      }
    }
  }

  void display()
  {
    std::cout << "------------------" << std::endl;
    for(auto param : parameters_)
      param.second.display();
    std::cout << "------------------" << std::endl;
  }
};

#endif // PARAMETERS_H
