ItemPocketNames:
; entries correspond to item type constants
	dw .Item
	dw .Key
	dw .Ball
	dw .TM

.Item: db "poche objet@"
.Key:  db "poche rares@"
.Ball: db "poche balls@"
.TM:   db "poche TM@"
