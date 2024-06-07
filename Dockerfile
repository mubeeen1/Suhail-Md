FROM quay.io/suhailtechinfo/suhail-v2

RUN git clone https://github.com/mubeeen1/Suhail-Md

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf Suhail-Md/node_modules

# Install dependencies
WORKDIR Suhail-Md
RUN yarn install --network-concurrency 1

# Add additional Steps To Run...
EXPOSE 8000
CMD ["npm","start" ]
