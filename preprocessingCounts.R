# Charger le fichier featureCounts brut
df <- read.delim("/home/thomas.louvet/Documents/Rfiles/PreprocessingCountsTable/gene_counts.txt", comment.char="#")

# Garde juste la colonne Geneid (col 1) + colonnes de comptage (col 7 à la fin)
counts <- df[, c(1, 7:ncol(df))]

# renommer les colonnes pour enlever ".bam" ou simplifier
colnames(counts) <- c("gid", sub("\\.bam$", "", colnames(counts)[-1]))

# Sauvegarder le fichier nettoyé
write.table(counts, "/home/thomas.louvet/Documents/Rfiles/PreprocessingCountsTable/gene_counts_simple.txt", sep="\t", row.names=FALSE, quote=FALSE)
