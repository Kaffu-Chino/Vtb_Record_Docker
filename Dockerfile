FROM python:3.9.0-buster

LABEL name="Kaffu Chino" mail="kaffu-chino@outlook.com"

# VOLUME /bili_rec/conf

ENV config_dir /bili_rec/conf

RUN pip install --upgrade streamlink && echo "install streamlink"

RUN mkdir vtb_record

WORKDIR /vtb_record

RUN wget https://github.com/fzxiao233/Vtb_Record/releases/download/0.6.1/Vtb_Record_0.6.1_Linux_amd64.tar.gz && tar -zxvf Vtb_Record_0.6.1_Linux_amd64.tar.gz

RUN ["/bin/sh","-c","cp \" $config_dir \"/bili_rec/conf/config.json ./ "]

CMD [ "Vtb_Record" ]
