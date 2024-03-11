FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/A-d-i-t-h-y-a-n/hermit-md /root/hermit-md
WORKDIR /root/hermit-md/
RUN yarn install --network-concurrency 1
RUN npm install pm2 -g
ENV PM2_PUBLIC_KEY ik8n0ebfdr0073p
ENV PM2_SECRET_KEY hch71nze79bupe6
CMD ["pm2-runtime", "app.js"]
