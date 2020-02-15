#make a list of all national park names
#each column is a for loop over length of park names
#count of rows in species where park name = i (name of current park in the loop) and category = "mammal"

setwd("C://Users//charl//OneDrive//Desktop//NationalParkBiodiversity//Data")

#read in data
parks = read.csv("parks.csv",header=TRUE)
species = read.csv("species.csv",header = TRUE)

#find all families of organisims in data
unique(species$Category)

#create counts for total species and each family
parks$speciesCount = 0
parks$mammalCount = 0
parks$birdCount = 0
parks$reptileCount = 0
parks$amphibianCount = 0
parks$fishCount = 0
parks$vascularplantCount = 0
parks$spiderCount = 0
parks$insectCount = 0
parks$invertebrateCount = 0
parks$fungiCount = 0
parks$nonvascularplantCount = 0
parks$crustaceanCount = 0
parks$slugCount = 0
parks$algaeCount = 0


#Counting total species in all parks
for(i in 1:nrow(species))#for each row in species
{
  for(n in 1:nrow(parks)) #check each row in parks
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i]) #if the row has the park name, increase the count of species in that park
    {
      parks$speciesCount[n] = parks$speciesCount[n] + 1
    }
  }
}

#counting all mammals
for(i in 1:nrow(species))#for each row in species
{
  for(n in 1:nrow(parks)) #check each row in parks
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i]) #if the row has the park name, check its category
    {
      if("Mammal" %in% species$Category[i]) #if the animal is a mammal, increase the count of mammals in the park
      {
        parks$mammalCount[n] = parks$mammalCount[n] + 1
      }
    }
  }
}

#counting all birds
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Bird" %in% species$Category[i])
      {
        parks$birdCount[n] = parks$birdCount[n] + 1
      }
    }
  }
}

#counting all reptiles
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Reptile" %in% species$Category[i])
      {
        parks$reptileCount[n] = parks$reptileCount[n] + 1
      }
    }
  }
}

#counting all Amphibian
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Amphibian" %in% species$Category[i])
      {
        parks$amphibianCount[n] = parks$amphibianCount[n] + 1
      }
    }
  }
}

#counting all fish
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Fish" %in% species$Category[i])
      {
        parks$fishCount[n] = parks$fishCount[n] + 1
      }
    }
  }
}

#counting all Vascular Plants
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Vascular Plant" %in% species$Category[i])
      {
        parks$vascularplantCount[n] = parks$vascularplantCount[n] + 1
      }
    }
  }
}

#counting all spider/scorpion
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Spider/Scorpion" %in% species$Category[i])
      {
        parks$spiderCount[n] = parks$spiderCount[n] + 1
      }
    }
  }
}

#counting all insects
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Insect" %in% species$Category[i])
      {
        parks$insectCount[n] = parks$insectCount[n] + 1
      }
    }
  }
}

#counting all invertebrate
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Invertebrate" %in% species$Category[i])
      {
        parks$invertebrateCount[n] = parks$invertebrateCount[n] + 1
      }
    }
  }
}

#counting all Fungi
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Fungi" %in% species$Category[i])
      {
        parks$fungiCount[n] = parks$fungiCount[n] + 1
      }
    }
  }
}

#counting all nonvascular plants
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Nonvascular Plant" %in% species$Category[i])
      {
        parks$nonvascularplantCount[n] = parks$nonvascularplantCount[n] + 1
      }
    }
  }
}

#counting all crab/lobster/shrimp
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Crab/Lobster/Shrimp" %in% species$Category[i])
      {
        parks$crustaceanCount[n] = parks$crustaceanCount[n] + 1
      }
    }
  }
}

#counting all slug/snail
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Slug/Snail" %in% species$Category[i])
      {
        parks$slugCount[n] = parks$slugCount[n] + 1
      }
    }
  }
}

#counting all algae
for(i in 1:nrow(species))
{
  for(n in 1:nrow(parks))
  {
    if(parks$Park.Name[n] %in% species$Park.Name[i])
    {
      if("Algae" %in% species$Category[i])
      {
        parks$algaeCount[n] = parks$algaeCount[n] + 1
      }
    }
  }
}


#sampling 
#sample size = 75% of the population (42 parks out of 56 total)
set.seed(2020)
sample_idx = sample(1:nrow(parks), size = floor(nrow(parks) * .75))
parks_sample <- parks[sample_idx,]
