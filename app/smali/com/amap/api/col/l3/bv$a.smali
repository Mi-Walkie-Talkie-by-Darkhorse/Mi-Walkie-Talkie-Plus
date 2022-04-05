.class public final enum Lcom/amap/api/col/l3/bv$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/col/l3/bv$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/col/l3/bv$a;

.field public static final enum b:Lcom/amap/api/col/l3/bv$a;

.field public static final enum c:Lcom/amap/api/col/l3/bv$a;

.field public static final enum d:Lcom/amap/api/col/l3/bv$a;

.field public static final enum e:Lcom/amap/api/col/l3/bv$a;

.field private static final synthetic g:[Lcom/amap/api/col/l3/bv$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/amap/api/col/l3/bv$a;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "amap_exception"

    invoke-direct {v0, v3, v2, v1}, Lcom/amap/api/col/l3/bv$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/col/l3/bv$a;->a:Lcom/amap/api/col/l3/bv$a;

    new-instance v0, Lcom/amap/api/col/l3/bv$a;

    const/4 v3, 0x1

    const-string v4, "network_exception"

    invoke-direct {v0, v4, v3, v1}, Lcom/amap/api/col/l3/bv$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/col/l3/bv$a;->b:Lcom/amap/api/col/l3/bv$a;

    new-instance v0, Lcom/amap/api/col/l3/bv$a;

    const/4 v1, 0x2

    const-string v4, "file_io_exception"

    invoke-direct {v0, v4, v1, v2}, Lcom/amap/api/col/l3/bv$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/col/l3/bv$a;->c:Lcom/amap/api/col/l3/bv$a;

    new-instance v0, Lcom/amap/api/col/l3/bv$a;

    const/4 v4, 0x3

    const-string v5, "success_no_exception"

    invoke-direct {v0, v5, v4, v3}, Lcom/amap/api/col/l3/bv$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/col/l3/bv$a;->d:Lcom/amap/api/col/l3/bv$a;

    new-instance v0, Lcom/amap/api/col/l3/bv$a;

    const/4 v5, 0x4

    const-string v6, "cancel_no_exception"

    invoke-direct {v0, v6, v5, v1}, Lcom/amap/api/col/l3/bv$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/col/l3/bv$a;->e:Lcom/amap/api/col/l3/bv$a;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amap/api/col/l3/bv$a;

    sget-object v7, Lcom/amap/api/col/l3/bv$a;->a:Lcom/amap/api/col/l3/bv$a;

    aput-object v7, v6, v2

    sget-object v2, Lcom/amap/api/col/l3/bv$a;->b:Lcom/amap/api/col/l3/bv$a;

    aput-object v2, v6, v3

    sget-object v2, Lcom/amap/api/col/l3/bv$a;->c:Lcom/amap/api/col/l3/bv$a;

    aput-object v2, v6, v1

    sget-object v1, Lcom/amap/api/col/l3/bv$a;->d:Lcom/amap/api/col/l3/bv$a;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amap/api/col/l3/bv$a;->g:[Lcom/amap/api/col/l3/bv$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amap/api/col/l3/bv$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/col/l3/bv$a;
    .locals 1

    const-class v0, Lcom/amap/api/col/l3/bv$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3/bv$a;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/col/l3/bv$a;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3/bv$a;->g:[Lcom/amap/api/col/l3/bv$a;

    invoke-virtual {v0}, [Lcom/amap/api/col/l3/bv$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/col/l3/bv$a;

    return-object v0
.end method
