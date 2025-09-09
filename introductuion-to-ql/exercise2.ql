from float a
where a = 3
select a.pow(5).minimum(245.6).sin() 

/*
    Alternative solution
    from float x, float y
    where x = 3.pow(5) and y = 245.6
    select x.minimum(y).sin()
*/