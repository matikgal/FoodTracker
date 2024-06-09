using System;
using System.Collections.Generic;

namespace FoodTracker.Models;

public partial class Meal
{
    public int Id { get; set; }

    public string Name { get; set; }

    public int Calories { get; set; }

    public double Protein { get; set; }

    public double Carbs { get; set; }

    public double Fat { get; set; }
}
