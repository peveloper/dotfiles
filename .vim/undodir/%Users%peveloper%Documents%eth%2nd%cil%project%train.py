Vim�UnDo� bs(�h�M1���,��Lx�V� =l�="��i�   R       :                           Y�4    _�                     &        ����                                                                                                                                                                                                                                                                                                                                                             YȢ     �   &   )   D              �   &   (   C    5�_�                    (        ����                                                                                                                                                                                                                                                                                                                                                             YȤ     �   '   +   E       �   (   )   E    5�_�                    (        ����                                                                                                                                                                                                                                                                                                                                                             Yȥ     �   '   )   G      !timestamp = str(int(time.time()))5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             Y�H     �   *   0   G       �   +   ,   G    5�_�                    +        ����                                                                                                                                                                                                                                                                                                                                                             Y�I     �   *   ,   K      Fcheckpoint_dir = os.path.abspath(os.path.join(out_dir, "checkpoints"))5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             Y�L     �   *   ,   K    5�_�      	              0       ����                                                                                                                                                                                                                                                                                                                                                             Y�N    �   0   2   L    5�_�      
          	          ����                                                                                                                                                                                                                                                                                                                                                             Y�}     �         M    5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             Y�~     �         N       �         N    5�_�   
                 M        ����                                                                                                                                                                                                                                                                                                                                                             Yɗ     �   M   O   P                  �   M   O   O    5�_�                    N       ����                                                                                                                                                                                                                                                                                                                                                             Yə     �   M   Q   P                  �   N   O   P    5�_�                    Q        ����                                                                                                                                                                                                                                                                                                                            Q          R          V       Yɟ    �   P   Q          G        path = saver.save(sess, 'data/model', global_step=current_step)   <        print("Saved model checkpoint to {}\n".format(path))5�_�                    P   C    ����                                                                                                                                                                                                                                                                                                                                                             Y��    �   O              C                print("Saved model checkpoint to {}\n".format(path)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Y��     �         P      !vocab, x = pp.build_vocab(x_text)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Y��    �         Q       �         P    5�_�                    5        ����                                                                                                                                                                                                                                                                                                                            5   +       8   +       V   +    Y�     �   4   5          I        global_step = tf.Variable(0, name="global_step", trainable=False)   0        optimizer = tf.train.AdamOptimizer(1e-3)   >        grads_and_vars = optimizer.compute_gradients(cnn.loss)   U        train_op = optimizer.apply_gradients(grads_and_vars, global_step=global_step)5�_�                    )        ����                                                                                                                                                                                                                                                                                                                            5   +       5   +       V   +    Y�     �   )   ,   N              �   )   +   M    5�_�                    +        ����                                                                                                                                                                                                                                                                                                                            7   +       7   +       V   +    Y�     �   +   0   O    �   +   ,   O    5�_�                    +        ����                                                                                                                                                                                                                                                                                                                            ;   +       ;   +       V   +    Y�"     �   *   +           5�_�                    :        ����                                                                                                                                                                                                                                                                                                                            :   +       :   +       V   +    Y�&     �   9   ;   R       5�_�                     :       ����                                                                                                                                                                                                                                                                                                                            :   +       :   +       V   +    Y�3    �   9   ;   R              �   :   ;   R    5�_�              	             ����                                                                                                                                                                                                                                                                                                                                                             Y�z     �         M    �         M      ltf.flags.tf.flags.DEFINE_integer("checkpoint_every", 100, "Save model after this many steps (default: 100)")   �tf.flags.DEFINE_integer("num_checkpoints", 5, "Number of checkpoints to store (default: 5)")DEFINE_integer("num_epochs", 200, "Number of training epochs (default: 200)")5��