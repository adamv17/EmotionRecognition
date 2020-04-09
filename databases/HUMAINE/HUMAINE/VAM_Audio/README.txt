---------------------------------------------------------
     VAM-AUDIO DATABASE
---------------------------------------------------------

This is the audio-only part of the Vera-Am-Mittag (VAM) Database, called VAM-Audio.

Description.
This data was collected from a talk-show on German free-TV channel Sat1. It consists of segmented utterances of talk-show guests' speech in the show "Vera am Mittag" (Vera at noon), recorded in 2005. Each talk-show consists of several dialoges, and each dialog consists of spontaneous, unscripted discussions between 2 or 3 guests, moderated by the anchorwoman Vera. The language is German.

Content.
The corpus contains 47 speakers (11m/36f), and a total of 947 sentences. 

Data.
The corpus consists of a directory "data", in which for each of the 47 labeled speakers, we have one subdirectory ("Sprecher" = speaker). In each subdirectory, the sentences are named as Satz01001.wav, e.g., where the "Satz" means sentence, "01" is the speaker's ID, and "001" is the sentence ID (speakerwise).
The emotion labels are found in the *.eva- files and the *.ewe-files. The *.eva-files contain all evaluation results of all 17 human labelors (Speaker1-19)/ 6 human labelors (Speaker20-47), one per row. The *.ewe-files contain the merged evaluation results using the method described in Grimm & Kroschel, "Evaluation of Natural Emotions Using Self Assessment Manikins", Proc.IEEE ASRU, 2005, pp.381-385
The columns in all emotion label files indicate valence, activation, and dominance, respectively, in the normalized range of [-1,+1].

Documentation.
In directory "docu" there are two Microsoft Excel sheets. These give additional information on the speakers, and contain a transcription of each sentence.


Note:
This is already the reduced database containing only those sentences, that had been evaluated with a mean evaluation standard deviation of 0.5 or less.

Copyright.
This data was collected and segmented at the University of Karlsruhe (TH), Karlsruhe, Germany, by Dipl.-Ing. Michael Grimm and Prof. Dr.-Ing. Kristian Kroschel of the Institut für Nachrichtentechnik (INT). No distribution or publication of this data is allowed without the written permission by the University of Karlsruhe or any of the HUMAINE Association members.


In case you need further help, please contact
Michael Grimm: grimm@int.uni-karlsruhe.de

For publications, please cite "The Vera am Mittag German Audio-Visual Emotional Speech Database", Michael Grimm, Kristian Kroschel, and Shrikanth Narayanan.
Submitted to IEEE International Conference on Acoustics, Speech, and Signal Processing (ICASSP), Las Vegas NV, USA, 2008

Suggested reading: Grimm et al., "Primitives-Based Evaluation and Estimation of Emotions in Speech", Speech Communication, Volume 49, Issues 10-11, October-November 2007, Pages 787-800
----------------------------------------------------------