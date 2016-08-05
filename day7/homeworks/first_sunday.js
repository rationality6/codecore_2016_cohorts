for (year = 2014; year < 2050; year++) {
    var year_date = new Date(year, 0, 1);
    if (year_date.getDay() == 0) {
        console.log(year_date);
    }
}

console.log(year_date.getDay())
