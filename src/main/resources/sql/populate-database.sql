INSERT INTO TB_BOT (ID_BOT, NAME_BOT, WELCOME_MSG, FAREWELL_MSG, DOWNTIME, DEFAULT_ANSWER) VALUES (BOT_SEQ.NEXTVAL, 'TheGoodBot', 'Olá tudo bem?', 'Boa sorte! e lembre-se de procurar ajuda caso necessitar', '40', 'Desculpa, não consegui entender o que você quis dizer');
INSERT INTO TB_BOT (ID_BOT, NAME_BOT, WELCOME_MSG, FAREWELL_MSG, DOWNTIME, DEFAULT_ANSWER) VALUES (BOT_SEQ.NEXTVAL, 'Go4ItBot', 'Olá, como você vai?', 'Falou e até mais', '40', 'Desculpa, não consegui entender você');
INSERT INTO TB_BOT (ID_BOT, NAME_BOT, WELCOME_MSG, FAREWELL_MSG, DOWNTIME, DEFAULT_ANSWER) VALUES (BOT_SEQ.NEXTVAL, 'TheKillerBot', 'Olá, seu cretino', 'Falou e até nunca mais', '40', 'Não entendi o que você quer');



INSERT INTO TB_SEGMENT (ID_SEG, NAME, ID_BOT) VALUES (SEG_SEQ.NEXTVAL, 'Fitness', 1);
INSERT INTO TB_SEGMENT (ID_SEG, NAME, ID_BOT) VALUES (SEG_SEQ.NEXTVAL, 'Saúde', 1);
INSERT INTO TB_SEGMENT (ID_SEG, NAME, ID_BOT) VALUES (SEG_SEQ.NEXTVAL, 'Psicologia', 1);