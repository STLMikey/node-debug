# node-debug


1. clone repo to /path/on/machine
    - git clone https://github.com/STLMikey/node-debug.git /path/on/machine
    
2. docker build -t debugimage . && docker run -it --rm --name debug -v /path/on/machine/app/example:/usr/src/app/example debugimage

3. echo "console.log('modified from rsync');" > /different/path/app/example.js 

4. echo "console.log('modified directly');" > /path/on/machine/example.js 
    - notice nodemon restarts example.js as expected

5. rsync -azP --delete --force /different/path/* /path/on/machine
    - notice nodemon does not restart example.js, despite contents changing