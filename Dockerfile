FROM bigwisu/pm2:latest

WORKDIR /usr/src/app

COPY . ./

ENV RUNNER_ALLOW_RUNASROOT=1
ENV _GITHUB_REPO=$_GITHUB_REPO

CMD [ "sh", "setup_env.sh" ]
ENTRYPOINT ["sh", "linux_arm_setup.sh"]
