-- Relevamiento de todos los campos _ACTUAL en tablas DM_FRAME_*
-- Correr antes de armar el job de elegibilidad para no dejar campos afuera.
-- Cruzar resultado con los campos ya cubiertos en los steps de FADS y PADS.
SELECT
  TABLE_NAME,
  COLUMN_NAME,
  DATA_TYPE
FROM `pdme000840-id3am42qxoa-furyid.TBL.INFORMATION_SCHEMA.COLUMNS`
WHERE TABLE_NAME LIKE 'DM_FRAME_%'
  AND COLUMN_NAME LIKE '%_ACTUAL'
ORDER BY TABLE_NAME, COLUMN_NAME;
