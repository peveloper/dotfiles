Vim�UnDo� �]~.���~�d�Y<�S^CoĆe�'E�KC-          �                          X���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             X���     �                 �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                            X��h    �                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                            X���    �              #define FREQUENCY 3.4e95�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X��.    �   �   �          �   �   �      5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X��     �   �   �            print_mat(B);5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X��     �   �   �            print_mat(C);5�_�      	              �       ����                                                                                                                                                                                                                                                                                                                                                            X��    �   �   �            5�_�      
           	   >        ����                                                                                                                                                                                                                                                                                                                                                            X�?�     �   >   A         �   >   @      5�_�   	              
   @        ����                                                                                                                                                                                                                                                                                                                                                            X�A     �   ?   @           5�_�   
                 �       ����                                                                                                                                                                                                                                                                                                                                                            X�B�    �   �   �          �   �   �      5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X�C      �   �             �  printf("RDTSC instruction:\n %lf cycles measured => %lf seconds, assuming frequency is %lf MHz. (change in source file if different)\n\n", r, r/(FREQUENCY), (FREQUENCY)/1e6);5�_�                           ����                                                                                                                                                                                                                                                                                                                                             V       X�C&     �             �  printf("C clock() function:\n %lf cycles measured. On some systems, this number seems to be actually computed from a timer in seconds then transformed into clock ticks using the variable CLOCKS_PER_SEC. Unfortunately, it appears that CLOCKS_PER_SEC is sometimes set improperly. (According to this variable, your computer should be running at %lf MHz). In any case, dividing by this value should give a correct timing: %lf seconds. \n\n",c, (double) CLOCKS_PER_SEC/1e6, c/CLOCKS_PER_SEC);5�_�                           ����                                                                                                                                                                                                                                                                                                                                             V       X�C0     �    	          D  printf("C gettimeofday() function:\n %lf seconds measured\n\n",t);5�_�                           ����                                                                                                                                                                                                                                                                                                                                             V       X�C7    �  
            O  printf("Windows getTickCount() function:\n %lf milliseconds measured\n\n",t);5�_�                          ����                                                                                                                                                                                                                                                                                                                                             V       X�CD    �              �  printf("Windows QueryPerformanceCounter() function:\n %lf cycles measured => %lf seconds, with reported CPU frequency %lf MHz\n\n",p,p/f.QuadPart,(double)f.QuadPart/1000);5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X�Cz   	 �   �   �            printf("n=%d \n",n);5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X�ݸ     �   �   �            printf("%d %f\n", n, r);5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X�ݹ     �   �             �  /*printf("RDTSC instruction:\n %lf cycles measured => %lf seconds, assuming frequency is %lf MHz. (change in source file if different)\n\n", r, r/(FREQUENCY), (FREQUENCY)/1e6);*/5�_�                          ����                                                                                                                                                                                                                                                                                                                                                            X�ݽ     �             �  /*printf("C clock() function:\n %lf cycles measured. On some systems, this number seems to be actually computed from a timer in seconds then transformed into clock ticks using the variable CLOCKS_PER_SEC. Unfortunately, it appears that CLOCKS_PER_SEC is sometimes set improperly. (According to this variable, your computer should be running at %lf MHz). In any case, dividing by this value should give a correct timing: %lf seconds. \n\n",c, (double) CLOCKS_PER_SEC/1e6, c/CLOCKS_PER_SEC);*/5�_�                          ����                                                                                                                                                                                                                                                                                                                                                            X���   
 �    	          H  /*printf("C gettimeofday() function:\n %lf seconds measured\n\n",t);*/5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X��T     �   �             �  printf("RDTSC instruction:\n %lf cycles measured => %lf seconds, assuming frequency is %lf MHz. (change in source file if different)\n\n", r, r/(FREQUENCY), (FREQUENCY)/1e6);5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X��_    �   �             �   �         5�_�                      !    ����                                                                                                                                                                                                                                                                                                                                                            X���     �             �  printf("C clock() function:\n %lf cycles measured. On some systems, this number seems to be actually computed from a timer in seconds then transformed into clock ticks using the variable CLOCKS_PER_SEC. Unfortunately, it appears that CLOCKS_PER_SEC is sometimes set improperly. (According to this variable, your computer should be running at %lf MHz). In any case, dividing by this value should give a correct timing: %lf seconds. \n\n",c, (double) CLOCKS_PER_SEC/1e6, c/CLOCKS_PER_SEC);5�_�                   	   !    ����                                                                                                                                                                                                                                                                                                                                                            X���    �    
          D  printf("C gettimeofday() function:\n %lf seconds measured\n\n",t);5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X��4    �   �           "  printf("%d %f\n", n, r/(2*n^3));5�_�                    �   /    ����                                                                                                                                                                                                                                                                                                                                                            X��W    �   �           0  printf("%d %f\n", n, r/(2*pow((double) n, 3));5�_�                    �       ����                                                                                                                                                                                                                                                                                                                                                            X��x     �   �           1  printf("%d %f\n", n, r/(2*pow((double) n, 3)));5�_�                    �   /    ����                                                                                                                                                                                                                                                                                                                                                            X��z     �   �           /  printf("%d %f\n", n, (2*pow((double) n, 3)));5�_�                     �   -    ����                                                                                                                                                                                                                                                                                                                                                            X���    �   �           /  printf("%d %f\n", n, (2*pow((double) n, 3)));5�_�                            ����                                                                                                                                                                                                                                                                                                                                                            X���    �               5��