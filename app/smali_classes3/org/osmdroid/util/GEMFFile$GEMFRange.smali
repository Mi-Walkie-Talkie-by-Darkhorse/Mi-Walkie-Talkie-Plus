.class Lorg/osmdroid/util/GEMFFile$GEMFRange;
.super Ljava/lang/Object;
.source "GEMFFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/util/GEMFFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GEMFRange"
.end annotation


# instance fields
.field offset:Ljava/lang/Long;

.field sourceIndex:Ljava/lang/Integer;

.field final synthetic this$0:Lorg/osmdroid/util/GEMFFile;

.field xMax:Ljava/lang/Integer;

.field xMin:Ljava/lang/Integer;

.field yMax:Ljava/lang/Integer;

.field yMin:Ljava/lang/Integer;

.field zoom:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lorg/osmdroid/util/GEMFFile;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->this$0:Lorg/osmdroid/util/GEMFFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "GEMF Range: source=%d, zoom=%d, x=%d-%d, y=%d-%d, offset=0x%08X"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
