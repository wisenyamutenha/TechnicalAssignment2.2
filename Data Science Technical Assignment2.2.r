#Vectorized form
set.seed(25)

#create matrix
m<- replicate(10,rnorm(10))

#transform into data frame
df= data.frame(m)

df<- df + 10*sin(0.75*pi)
print(df)



#non-vectorized form
set.seed(25)

#create matrix
m1<- replicate(10,rnorm(10))

#transform into data frame
df1= data.frame(m1)

for(i in 1:10){
  for(j in 1:10){
    df1[i,j]<- df1[i,j] + 10*sin(0.75*pi)
  }
}
print(df1)


#time difference

system.time(
  df<- df + 10*sin(0.75*pi)
)

system.time(
  for(i in 1:10){
    for(j in 1:10){
      df1[i,j]<- df1[i,j] + 10*sin(0.75*pi)
    }
  }
)