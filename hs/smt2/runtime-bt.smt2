;; These options just make it easier to use the file independently
;; in a way that is consistent with how it is used via Haskell
(set-option :print-success true)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
(set-option :pp.bv-literals false)

(set-logic ALL)
(declare-sort Address 0)

(declare-sort Null 0)
(declare-fun null () Null)

(declare-datatypes ((Bytes 0))
 (((bytes0)
   (bytes-literal (toBytes_Literal_x Int))
   (toBytes_Int (toBytes_Int_x (_ BitVec 256)))
   (toBytes_Bool (toBytes_Bool_x Bool))
   (toBytes_Bytes (toBytes_Bytes_x Bytes))
   (msg-cat (msg-left Bytes) (msg-right Bytes)))))

(declare-fun digest (Bytes) (_ BitVec 256))
