INSERT INTO TB_BOT (ID_BOT, NAME_BOT, WELCOME_MSG, FAREWELL_MSG, DOWNTIME, DEFAULT_ANSWER) VALUES (BOT_SEQ.NEXTVAL, 'TheGoodBot', 'Ol� tudo bem?', 'Boa sorte! e lembre-se de procurar ajuda caso necessitar', '40', 'Desculpa, n�o consegui entender o que voc� quis dizer');
INSERT INTO TB_BOT (ID_BOT, NAME_BOT, WELCOME_MSG, FAREWELL_MSG, DOWNTIME, DEFAULT_ANSWER) VALUES (BOT_SEQ.NEXTVAL, 'Go4ItBot', 'Ol�, como voc� vai?', 'Falou e at� mais', '40', 'Desculpa, n�o consegui entender voc�');
INSERT INTO TB_BOT (ID_BOT, NAME_BOT, WELCOME_MSG, FAREWELL_MSG, DOWNTIME, DEFAULT_ANSWER) VALUES (BOT_SEQ.NEXTVAL, 'TheKillerBot', 'Ol�, seu cretino', 'Falou e at� nunca mais', '40', 'N�o entendi o que voc� quer');



INSERT INTO TB_SEGMENT (ID_SEG, NAME, ID_BOT) VALUES (SEG_SEQ.NEXTVAL, 'Fitness', 1);
INSERT INTO TB_SEGMENT (ID_SEG, NAME, ID_BOT) VALUES (SEG_SEQ.NEXTVAL, 'Sa�de', 1);
INSERT INTO TB_SEGMENT (ID_SEG, NAME, ID_BOT) VALUES (SEG_SEQ.NEXTVAL, 'Psicologia', 1);