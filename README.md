# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Estado - Colorado
    Programa - SIS  - Broker fee (editable) (250USD por ahora)
                    - Inspection fee (100USD)
                    - Surplus Tax ( 4% del premium del rango) 
    Limite - 1m 2m 2m
    Clases Disponibles (Depende del progrma) - Landscaping
   
    Tipo de Calculo - nivel de payrol o nivel de ventas (para cada clase)

    Edita Rangos (0-30000 -> 776USD, 30001-100000 -> 1200USD) -> depende del tipo de calculo
                                                                 pure premiun


    Financiamiento -> Basado tambien en el programa
    Nombre de Financiera, interes (APR), numero de pago y % de down 
      ESA                    24.995           9                15%
       
    pure premium 776 * 15% = 116.40 pure premium down
    down payment = pure premium down + broker fee + inspection fee + (776 * 0.04) -> 497.44
    
    85% de pure premium -> 776 * 0.85 -> 659.60 (amount financed)

    formula de calculo del total -> http://financeformulas.net/Loan_Payment_Formula.html

    
    API needs state, program, limit, class, range, number_of_months, rate

       throw 
