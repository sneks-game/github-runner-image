FROM bigwisu/pm2:latest

WORKDIR /usr/src/app

COPY . ./

ENV RUNNER_ALLOW_RUNASROOT=1

CMD [ "sh", "setup_env.sh" ]
ENTRYPOINT ["sh", "linux_arm_setup.sh"]