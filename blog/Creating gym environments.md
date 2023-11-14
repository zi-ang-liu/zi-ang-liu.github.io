# Creating gym environments

files and folders should be created as follows:

gym-examples/  
    README.md
    setup.py
    gym-examples/ 
        __init__.py
        envs/
            __init__.py
            MyEnv.py


setup.py

from setuptools import setup

setup(
    name="gym_examples",
    version="0.0.1",
    install_requires=["gymnasium==0.28.1"]
)


__init__.py
from gymnasium.envs.registration import register

register(
     id="gym_examples/MyEnv-v0",
     entry_point="gym_examples.envs:MyEnv",
     max_episode_steps=200,
)


__init__.py
from gym_examples.envs.MyEnv import MyEnv


MyEnv.py
class PershInvEnv(gym.Env):

    metadata = {'render.modes': [None]}

    def __init__(self):
        pass

    def reset(self, seed=None, options=None):
        pass

    def step(self, action):
        pass

    def render(self):
        pass