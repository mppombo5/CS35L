/* Return negative, zero, positive if A < B, A == B, A > B, respectively.
44    Assume the nanosecond components are in range, or close to it.  */
45 static inline int
46 timespec_cmp (struct timespec a, struct timespec b)
47 {
48   int diff = a.tv_sec - b.tv_sec;
49   return diff ? diff : a.tv_nsec - b.tv_nsec;
50 }

