//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfOptionFourApp.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Materials
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Materials()
        {
            this.MaterialsSupplier = new HashSet<MaterialsSupplier>();
        }
    
        public int ID { get; set; }
        public string Title { get; set; }
        public int IDMaterialType { get; set; }
        public string Image { get; set; }
        public decimal Cost { get; set; }
        public int QuantityStock { get; set; }
        public int Minimum { get; set; }
        public int AmountPackage { get; set; }
        public int IDUnit { get; set; }
    
        public virtual MaterialType MaterialType { get; set; }
        public virtual Unit Unit { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MaterialsSupplier> MaterialsSupplier { get; set; }
    }
}
