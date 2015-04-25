select municipality from `SPORTS-COMPLEX` where SCCode in (
	select BK.SCCode from `BOOKING` as BK, `TENNIS-COURT` as TC where BK.TCCode=TC.TCCode and TC.Type='Hard'and BK.Date='2015-04-06' and TC.TCCode not in (
        select TCCode from `TENNIS-COURT` having count(distinct Type) = 1
    )
)
