//The Egyptian football team will be in Russia for the World Cup. Of course, they all would like to buy souvenirs for their families.
//Luckily, they met the king of souvenirs Matryoshka who is famous for his masterpiece Katryoshka.
// He makes it using different wooden pieces: eyes, mouths and bodies.
// He can form a nice Katryoshka using one of the following combinations:
// 1. Two eyes and one body. 2. Two eyes, one mouth, and one body. 3. One eye, one mouth, and one body. 
//If the king has n eyes, m mouths and k bodies, what is the largest number of Katryoshkas he can make?




// The largest number of Katryoshkas the king can make is limited by the minimum number of eyes, 
//mouths, and bodies required for each type of combination. For the first type, he needs two eyes and one body,
// so he can make a maximum of min(n/2, k) of these. For the second type, he needs two eyes,
// one mouth, and one body, so he can make a maximum of min(n/2, m, k) of these. For the third type,
// he needs one eye, one mouth, and one body, so he can make a maximum of min(n, m, k) of these.

// Therefore, the largest number of Katryoshkas he can make is the maximum of these three values:

// max(min(n/2, k), min(n/2, m, k), min(n, m, k))
