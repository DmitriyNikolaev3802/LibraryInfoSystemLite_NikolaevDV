﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LibraryInfoSystemLite_NikolaevDV
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class LibraryISEntities : DbContext
    {
        public LibraryISEntities()
            : base("name=LibraryISEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Annotation> Annotation { get; set; }
        public virtual DbSet<Appeals> Appeals { get; set; }
        public virtual DbSet<Author> Author { get; set; }
        public virtual DbSet<Book> Book { get; set; }
        public virtual DbSet<Genre> Genre { get; set; }
        public virtual DbSet<Language> Language { get; set; }
        public virtual DbSet<LanguageTranslation> LanguageTranslation { get; set; }
        public virtual DbSet<PublicType> PublicType { get; set; }
        public virtual DbSet<PublishHouse> PublishHouse { get; set; }
        public virtual DbSet<Queue> Queue { get; set; }
        public virtual DbSet<ReadyIssuance> ReadyIssuance { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<User> User { get; set; }
    }
}