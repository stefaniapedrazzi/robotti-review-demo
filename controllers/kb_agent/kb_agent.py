import sys

sys.path.append('/home/pavlos/Desktop/ActivePerception/RL_with_OpenDR/opendr/src')
from stefania_env import Env

#from stable_baselines3.common.env_checker import check_env


env = Env(staged=False, action_space=7, recognize=True)
# check_env(env, warn=True)

env.reset()
while True:
    obs, reward, dones, _ = env.step(0)
    if dones:
        obs = env.reset()
        print("DONE")
