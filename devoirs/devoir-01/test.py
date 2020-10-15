

data = []
with open ("p.txt", "r") as file:
	for row in file:
		row = row.replace('<toilette', '\t<toilette')
		row = row.replace('<adresse>', '\t<adresse>')
		row = row.replace('<adresse>', '\n\t\t<adresse>\n')
		row = row.replace('<libelle>', '\t\t\t<libelle>')
		row = row.replace('<arrondissement>', '\t\t\t<arrondissement>')
		row = row.replace('</libelle>', '</libelle>\n')
		row = row.replace('</adresse>', '\n\t\t</adresse>\n')
		row = row.replace('<horaire>', '\t\t<horaire>')
		row = row.replace('<service>', '\n\t\t<service>\n')
		row = row.replace('<access-pmr>', '\t\t\t<access-pmr>')
		row = row.replace('<relais-bebe>', '\n\t\t\t<relais-bebe>')
		row = row.replace('</service>', '\n\t\t</service>\n')
		row = row.replace('<equipement>', '\t\t<equipement>')
		row = row.replace('</toilette>', '\n\t</toilette>\n')
		data.append(row)
with open("q.txt", "w") as file2:
	for item in data:
		print(item, file=file2)



