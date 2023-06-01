using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using api.Models;

#nullable disable

namespace api.Models
{
    public partial class kometaDBContext : DbContext
    {
        

        public kometaDBContext(DbContextOptions<kometaDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<S1v1> S1v1s { get; set; }
        public virtual DbSet<S1v2> S1v2s { get; set; }
        public virtual DbSet<S2v1> S2v1s { get; set; }
        public virtual DbSet<S2v2> S2v2s { get; set; }
        public virtual DbSet<S3v1> S3v1s { get; set; }
        public virtual DbSet<S3v2> S3v2s { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            

            modelBuilder.Entity<S1v1>(entity =>
            {
                entity.ToTable("s1v1");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.H).HasColumnName("h");

                entity.Property(e => e.V).HasColumnName("v");
            });

            modelBuilder.Entity<S1v2>(entity =>
            {
                entity.ToTable("s1v2");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.H).HasColumnName("h");

                entity.Property(e => e.V).HasColumnName("v");
            });

            modelBuilder.Entity<S2v1>(entity =>
            {
                entity.ToTable("s2v1");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.H).HasColumnName("h");

                entity.Property(e => e.V).HasColumnName("v");
            });

            modelBuilder.Entity<S2v2>(entity =>
            {
                entity.ToTable("s2v2");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.H).HasColumnName("h");

                entity.Property(e => e.V).HasColumnName("v");
            });

            modelBuilder.Entity<S3v1>(entity =>
            {
                entity.ToTable("s3v1");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.H).HasColumnName("h");

                entity.Property(e => e.V).HasColumnName("v");
            });

            modelBuilder.Entity<S3v2>(entity =>
            {
                entity.ToTable("s3v2");

                entity.Property(e => e.Id)
                    .ValueGeneratedNever()
                    .HasColumnName("id");

                entity.Property(e => e.H).HasColumnName("h");

                entity.Property(e => e.V).HasColumnName("v");
            });

            
            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);

        public DbSet<api.Models.U1s1v1> U1s1v1 { get; set; }

        public DbSet<api.Models.U1s2v1> U1s2v1 { get; set; }

        public DbSet<api.Models.U1s3v1> U1s3v1 { get; set; }

        public DbSet<api.Models.U1s1v22> U1s1v22 { get; set; }

        public DbSet<api.Models.U1s2v2> U1s2v2 { get; set; }

        public DbSet<api.Models.U1s3v2> U1s3v2 { get; set; }

        public DbSet<api.Models.S4v1> S4v1 { get; set; }

        public DbSet<api.Models.S1v1ANDS2v1> S1v1ANDS2v1 { get; set; }

        public DbSet<api.Models.S2v1ANDS3v1> S2v1ANDS3v1 { get; set; }

        public DbSet<api.Models.S3v1ANDS4v1> S3v1ANDS4v1 { get; set; }

        public DbSet<api.Models.S2v2ANDS3v2> S2v2ANDS3v2 { get; set; }

        public DbSet<api.Models.S1v2ANDS2v2> S1v2ANDS2v2 { get; set; }

        public DbSet<api.Models.S3v2NADS4v2> S3v2NADS4v2 { get; set; }

        public DbSet<api.Models.S4v2> S4v2 { get; set; }

        
    }
}
