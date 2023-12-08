from setuptools import setup, find_packages

setup(
    name='Brigadier',
    version='0.0.1',
    packages=find_packages(include=['brigadier'])
    install_requires=[
        'aiohttp',
    ],
    tests_require=['pytest'],
    entry_points={
        'console_scripts': ['brigadier=brigadier:main']
    }
)
