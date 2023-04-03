# Diabetes Challenge
- I participated in the DataScience Bootcamp of neuefische. This was an early Challenge for half a day, where I wanted to try to write my own function to apply preprocessing to both test and train data, based on the values calculated from the test data. I learned, that using sklearns Pipelines or building your own Pipelines within the sklearn architecture is much more straightforward as it seems. Writing the preprocessing function was therefore quite cumbersome but interesting

After we learned some interesting algorithms to solve classification problems, it's time to implement them on new data and to compare their performance. You can find the challenge for today in the second notebook [Diabetes Challenge](2_Diabetes_Challenge.ipynb). If you need more information about the data set, you can have a look at the [Paper](Paper_on_Diabetes_Mellitus_Data_Set.pdf) included in this repo.



## Environment

Use the requirements file in this repo to create a new virtual environment for this task.

We have also added a [Makefile](Makefile) which has the recipe called 'setup' which will run all the commands for setting up the environment. Feel free to check and use if you are tired of copy pasting so many commands.

```BASH
make setup
#or
pyenv local 3.9.8
python -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```
