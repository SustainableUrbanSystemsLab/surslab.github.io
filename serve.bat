REM Delete all running containers
FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker stop %%i
REM Serve jekyll in directory
docker run --rm -v "%cd%:/srv/jekyll" -p "8080:8080" -it amirpourmand/al-folio:latest /bin/sh -c "bundle install && jekyll serve --host 0.0.0.0 --port 8080" 
PAUSE
