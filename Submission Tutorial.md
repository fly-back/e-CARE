## e-CARE Submission Tutorial

We use [CodaLab Worksheets](http://worksheets.codalab.org/) for submitting your model to get the result on the test set, and put your model into the LederBoard. 

There are two kinds of evalution scripts:

* `evaluation_metrics_causal_reasoning.py`: the script for obtaining evalution metrics on causal reasoning task
* `evaluation_metrics_conceptual_explanation_generation.py`: the script for obtaining evalution metrics on conceptual explanation generation task

If your want to get the results on e-CARE test set, you should follow this instruction.



### Step 1: Get Ready

For running of your model, you should package the environment of your model into a Docker image and upload to [Docker Hub](https://hub.docker.com/).



### Step 2: Upload Necessary Files

* Firstly, you should create a new worksheet in [CodaLab Worksheets](http://worksheets.codalab.org/).
* Secondly, upload necessary files (eg. trained model, prediction script, model framework, e-CARE dev set, evaluation script) via the `UPLOAD` button. (Compress all the files into a zip file is recommended, CodaLab would unzip the file automatically once upload done.)



### Step 3: Get Results on e-CARE Dev Set with Official Evaluation Script

* Firstly, create a new run through the `RUN` button.

* Secondly, add the depedencies and fill the necessary information~(eg. name).

* Thirdly, fill the Docker imagine name in `Step 1` and choose the resources for computing.

* Fourthly, type the prediction command in `Command` line (eg. `python prediction.py dev.jsonl prediction.json`) for running prediction on dev set. Once succcessful, a new term will produced in the worksheet.  And The format of the prediction file should be as follows:

  * `Causal Reasoning`: each key is the `index` of the correponding example, each value is the prediction label `0` or `1`.

  ```json
  {
    "dev-0": 0,
    "dev-1": 1,
    "dev-2": 0
  }
  ```

  * `Conceptual Explanation Generation`: each key is the `index` of the coresponding example, each value is the generated conceptual explanation.

  ```json
  {
    "dev-0": "Copper is a good thermal conductor.",
    "dev-1": "Abalone are one of the first food items taken by otters as they move into new habitat.",
    "dev-2": "Deserts are arid environments."
  }
  ```

* Finally, create a new run, using the official evaluation script for get the evaluation metrics~(`python evaluation_metrics_causal_reasoning.py prediction.json dev.jsonl`).



### Step 4: Submission

Once you get the evaluation metrics on the dev set, you can submit your model to kxiong@ir.hit.edu.cn or ldu@hit.edu.cn, and the following terms should be included in the email.

* The full uuis of the dev set prediction `RUN`~(the term contains the prediction results on dev set in `Step 3`).
* The name of the submmitted model.
* The task of your submitted model. (`Causal Reasoning` or `Conceptual Explanation Generation`)
* The name of your intitute~(Optional).
* The url of your paper~(Optional).
