.class final enum Lcom/amap/api/col/l3/er$a;
.super Ljava/lang/Enum;
.source "RectPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/er;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/col/l3/er$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/col/l3/er$a;

.field public static final enum b:Lcom/amap/api/col/l3/er$a;

.field public static final enum c:Lcom/amap/api/col/l3/er$a;

.field private static final synthetic d:[Lcom/amap/api/col/l3/er$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/amap/api/col/l3/er$a;

    const/4 v1, 0x0

    const-string v2, "FAIL"

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/l3/er$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/l3/er$a;->a:Lcom/amap/api/col/l3/er$a;

    new-instance v0, Lcom/amap/api/col/l3/er$a;

    const/4 v2, 0x1

    const-string v3, "PERFECT"

    invoke-direct {v0, v3, v2}, Lcom/amap/api/col/l3/er$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/l3/er$a;->b:Lcom/amap/api/col/l3/er$a;

    new-instance v0, Lcom/amap/api/col/l3/er$a;

    const/4 v3, 0x2

    const-string v4, "FIT"

    invoke-direct {v0, v4, v3}, Lcom/amap/api/col/l3/er$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/l3/er$a;->c:Lcom/amap/api/col/l3/er$a;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amap/api/col/l3/er$a;

    sget-object v5, Lcom/amap/api/col/l3/er$a;->a:Lcom/amap/api/col/l3/er$a;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amap/api/col/l3/er$a;->b:Lcom/amap/api/col/l3/er$a;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amap/api/col/l3/er$a;->d:[Lcom/amap/api/col/l3/er$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/col/l3/er$a;
    .locals 1

    .line 1
    const-class v0, Lcom/amap/api/col/l3/er$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3/er$a;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/col/l3/er$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/col/l3/er$a;->d:[Lcom/amap/api/col/l3/er$a;

    invoke-virtual {v0}, [Lcom/amap/api/col/l3/er$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/col/l3/er$a;

    return-object v0
.end method
