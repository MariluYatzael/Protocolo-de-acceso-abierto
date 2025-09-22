
install.packages("RefManageR")


library(RefManageR)


refs <- ReadBib("C:/Users/maluv/Downloads/prueba2.bib")

print(refs)


df_refs <- as.data.frame(refs)


head(df_refs[, c("title", "author", "year", "journal")])


table(df_refs$year)

sort(table(df_refs$journal), decreasing = TRUE)[1:10]


table(df_refs$language)


install.packages("ggplot2")

library(ggplot2)


ggplot(df_refs, aes(x = year)) +
  geom_bar(fill = "steelblue") +
  labs(title = "Número de artículos por año",
       x = "Año de publicación",
       y = "Cantidad de artículos")


journal_counts <- sort(table(df_refs$journal), decreasing = TRUE)


top_journals <- head(journal_counts, 5)

top_journals_df <- data.frame(
  Journal = names(top_journals),
  Count = as.integer(top_journals)
)


print(top_journals_df)



ggplot(top_journals_df, aes(x = reorder(Journal, Count), y = Count)) +
  geom_bar(stat = "identity", fill = "darkgreen") +
  coord_flip() +
  labs(title = "Revistas con más artículos en mis referencias",
       x = "Revista",
       y = "Número de artículos")
