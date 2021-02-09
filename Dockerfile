FROM ubuntu
MAINTAINER "Divya M"
       
#installing git
RUN cd ${HOME}
#RUN apt-get update && apt install git -y 
RUN mkdir -p ${HOME}/.certs
RUN openssl s_client -connect code.oxzion.com:443 2>/dev/null| awk '/-----BEGIN CERTIFICATE-----/, /-----END CERTIFICATE-----/' > ${HOME}/.certs/do_not_delete_it.pem
#RUN git config --global http.sslCAInfo ${HOME}/.certs/do_not_delete_it.pem
#RUN git clone git@code.oxzion.com:eox/framework/oxzion3.0.git doc_sample
#WORKDIR /HOME/doc_sample
CMD ["echo", "Hello World!.. git image is ruuning in container"]