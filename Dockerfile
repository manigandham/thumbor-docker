FROM python:2

RUN git clone git://github.com/thumbor/thumbor.git
RUN cd thumbor
RUN python setup.py install
