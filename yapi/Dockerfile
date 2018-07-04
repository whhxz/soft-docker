from node
COPY ./ /app/vendors
WORKDIR /app/vendors
RUN npm install --production --registry https://registry.npm.taobao.org
EXPOSE 3000
ENTRYPOINT ["node"]
CMD ["./server/app.js"]
