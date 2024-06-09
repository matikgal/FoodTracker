using System;
using System.Collections.Generic;

namespace FoodTracker.Models;

public partial class MealHistory
{
    public int Id { get; set; }

    public string MealName { get; set; }

    public decimal? MealWeight { get; set; }

    public int? Kcal { get; set; }

    public decimal? Protein { get; set; }

    public decimal? Carbohydrates { get; set; }

    public decimal? Fats { get; set; }

    public DateOnly? DateAdded { get; set; }
}
