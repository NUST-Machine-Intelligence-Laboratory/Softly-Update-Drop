# Web-Supervised Network with Softly Update-Drop Training for Fine-Grained Visual Classification

An advanced verision of our work is available:
https://github.com/NUST-Machine-Intelligence-Laboratory/Advanced-Softly-Update-Drop

Network Architecture
--------------------
The architecture of our proposed model is as follows
![network](network.png)

Installation
------------
After creating a virtual environment of python 3.7, run `pip install -r requirements.txt` to install all dependencies

How to use
------------
The code is currently tested only on GPU
* **Data Preparation**
    - Download data into project root directory and uncompress them using
        ```
        wget https://wsnfg-sh.oss-cn-shanghai.aliyuncs.com/web-bird.tar.gz
        wget https://wsnfg-sh.oss-cn-shanghai.aliyuncs.com/web-car.tar.gz
        wget https://wsnfg-sh.oss-cn-shanghai.aliyuncs.com/web-aircraft.tar.gz
        tar -xvf web-bird.tar.gz
        tar -xvf web-car.tar.gz
        tar -xvf aircraft-car.tar.gz
        ```
* **Source Code**

    - If you want to train the whole network from begining using source code on the web fine-grained dataset, please follow subsequent steps
    
      - Choose a dataset, create soft link to dataset by
       ```
       ln -s web-bird bird
       ln -s web-car car
       ln -s web-aircraft aircraft
       ```

      - Modify `CUDA_VISIBLE_DEVICES` to proper cuda device id in  ``` cub200_run.sh, car196_run.sh, aircraft100_run.sh ```
      
      - Activate virtual environment(e.g. conda) and then run the script
       ```
       bash cub200_train.sh
       bash car196_run.sh
       bash aircraft100_run.sh
       ```

![table](performance.png)

## Citation

If you find this useful in your research, please consider citing:

    @article{zhang2020soft,
	title={Web-Supervised Network with Softly Update-Drop Training for Fine-Grained Visual Classification},
	author={Zhang, Chuanyi and Yao, Yazhou and Liu, Huafeng and Xie, Guo-Sen and Shu, Xiangbo and Zhou, Tianfei and Zhang, Zheng and Shen, Fumin and Tang, Zhenmin},
	journal={AAAI Conference on Artificial Intelligence (AAAI)},
	year={2020}
}
