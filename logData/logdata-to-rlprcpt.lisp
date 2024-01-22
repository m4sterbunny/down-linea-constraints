(defpurefun (sel-logData-to-rlpRcpt)
  logData.LOGS_DATA)

(deflookup 
  logData-into-rlpRcpt
  ;reference columns
  (
    rlpTxRcpt.ABS_LOG_NUM
    (subphaseId-rlp-txrcpt)
    rlpTxRcpt.INDEX_LOCAL
    rlpTxRcpt.LIMB
    rlpTxRcpt.nBYTES
  )
  ;source columns
  (
    (* logData.ABS_LOG_NUM (sel-logData-to-rlpRcpt))
    (* RLPRECEIPT_SUBPHASE_ID_DATA_LIMB (sel-logData-to-rlpRcpt))
    (* logData.INDEX (sel-logData-to-rlpRcpt))
    (* logData.LIMB (sel-logData-to-rlpRcpt))
    (* logData.SIZE_LIMB (sel-logData-to-rlpRcpt))
  ))

