using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace FoodTracker.Models;

public partial class FoodAppDatabaseContext : DbContext
{
    public FoodAppDatabaseContext()
    {
    }

    public FoodAppDatabaseContext(DbContextOptions<FoodAppDatabaseContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Meal> Meals { get; set; }

    public virtual DbSet<MealHistory> MealHistories { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=DESKTOP-ML624TJ;Database=FoodAppDatabase;Trusted_Connection=True;TrustServerCertificate=true;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Meal>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Meals__3214EC075742B63A");

            entity.Property(e => e.Name)
                .IsRequired()
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<MealHistory>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__meal_his__3213E83F8272D0E5");

            entity.ToTable("meal_history");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Carbohydrates)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("carbohydrates");
            entity.Property(e => e.DateAdded).HasColumnName("date_added");
            entity.Property(e => e.Fats)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("fats");
            entity.Property(e => e.Kcal).HasColumnName("kcal");
            entity.Property(e => e.MealName)
                .HasMaxLength(255)
                .HasColumnName("meal_name");
            entity.Property(e => e.MealWeight)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("meal_weight");
            entity.Property(e => e.Protein)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("protein");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
