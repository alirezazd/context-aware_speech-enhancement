# A Context-Aware Speech Enhancement FPGA-SoC-Based Architecture
![](https://img.shields.io/badge/Status-Active-47c949)&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;![](https://img.shields.io/badge/Target%20FPGA--SoC-Intel%20Cyclone%20V-blue)
## Introduction
Modern embedded systems have a complex structure and have application in many fields including aerospace, control, digital signal processing, etc. Recent advancements in design tools and increasements in computational power of the implementation platforms have allowed these systems to move towards self-adaptivity which allows the system to adjust its behaviour and priorities during runtime to meet design goals. context-aware systems are one of the types of adaptive systems that can adapt their operations according to the current system context. Utilizing context-awareness in embedded systems in middleware and hardware layers can save computational resources and improve quality metrics such as performance and reliability. One of the prominent application fields for adaptive embedded systems is digital signal processing where the operating environment properties are time-varying. FPGAs are suitable candidates for implementing such systems because of features like runtime reconfigurability, parallel processing, and high internal bandwidth.  
In speech enhancement and many other signal processing applications, because of parameters like design constraints and goals, the most appropriate processing algorithm at a time might vary according to system context. Due to the resource limitations in embedded systems implementation platforms, in most cases, simultaneous implementation of multiple algorithms might not be optimal or achievable.  
In this project an FPGA-SoC-based context-aware architecture with application in speech enhancement along with its supporting model-based design flow is presented. Employment of model-based design flow and a high-level synthesis (HLS) tool in presented architecture allows straightforward implementation from high-level models. presented architecture can be customized for similar DSP applications and allows the designers and developers of this domain to design and implement their desired context-aware system.  

![](./Documentation/Figs/Overview.svg)
<p align="center"> <i> Fig.1. Overview of proposed FPGA-SoC system. </i> </p>

The overall structure of the presented system is demonstrated in Fig. 1. According to Fig. 1, a set of complementary algorithms exist on system storage as bitstreams. The software part of the system which undertakes context-awareness monitors system context e.g. noise level and source and configures the FPGA with the proper algorithm according to system context.  
In this project, as the running example, a speech enhancement system consisting of two well-known algorithms namely Multiband Spectral Subtraction (MBSS) and Minimum Min Square Error (MMSE) is implemented according to the design flow. Context-awareness is based on a Tensorflow machine-learning model that is trained for different operational environments in terms of noise source and level. The PESQ score is chosen for the quality measure and preference criterion for each algorithm.
## Background
Speech enhancement algorithms use mathematical and statistical tools combined with digital signal processing techniques to estimate and suppress noise from the degraded signal. In speech enhancement algorithms that deal with additive noise, it is assumed that noisy input signal in time domain ![](./Documentation/Figs/y(n).svg) consists of clean signal ![](./Documentation/Figs/x(n).svg) which is corrupted by additive noise ![](./Documentation/Figs/d(n).svg), that is:
<p align="center">
  <img src="./Documentation/Figs/additive-noise.svg" />
</p>
Due to rapid changes in temporal and spectral characteristics of speech signals, most enhancement algorithms operate on a frame-by-frame basis. Usually, the frame duration is 10-30 milliseconds during which the properties of the speech signal do not change much. Many speech enhancement algorithms function in the frequency-domain by transferring raw time-domain input signal via the fast Fourier transform (FFT) algorithm that due to its inherent parallelism, is suitable for hardware implementation.
### Speech enhancement algorithms
Two important classes of speech enhancement algorithms are (1) Spectral subtractive algorithms that are simple to implement. These algorithms function based on the principle that additive noise spectrum can be estimated and subtracted from the noisy speech signal. This can be expressed as:  
  
  
<p align="center">
  <img src="./Documentation/Figs/SS.svg" />
</p>

## System Architecture
## Designflow
## Development Process
