from setuptools import setup, find_packages

setup(
    name='Brigadier',
    version='0.0.1',
    packages=find_packages(include=['brigadier']),
    install_requires=[
        'aiohttp',
        'gunicorn',
        'uvloop',
        'click',
    ],
    extras_require={
        'dev': [
            'pytest',
            'pytest-pep8',
            'pytest-cov'
        ]
    },
    entry_points={
        'console_scripts': ['brigadier=brigadier.cli:cli']
    }
)
