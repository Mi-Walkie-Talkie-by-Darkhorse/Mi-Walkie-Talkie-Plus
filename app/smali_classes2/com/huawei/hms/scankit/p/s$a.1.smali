.class public final enum Lcom/huawei/hms/scankit/p/s$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/s$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/s$a;

.field public static final enum b:Lcom/huawei/hms/scankit/p/s$a;

.field public static final enum c:Lcom/huawei/hms/scankit/p/s$a;

.field public static final enum d:Lcom/huawei/hms/scankit/p/s$a;

.field public static final synthetic e:[Lcom/huawei/hms/scankit/p/s$a;


# instance fields
.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/huawei/hms/scankit/p/s$a;

    const-string v1, "AES"

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/scankit/p/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/hms/scankit/p/s$a;->a:Lcom/huawei/hms/scankit/p/s$a;

    new-instance v1, Lcom/huawei/hms/scankit/p/s$a;

    const-string v4, "RSA"

    const/4 v5, 0x1

    const/16 v6, 0x80

    invoke-direct {v1, v4, v5, v6}, Lcom/huawei/hms/scankit/p/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/huawei/hms/scankit/p/s$a;->b:Lcom/huawei/hms/scankit/p/s$a;

    new-instance v4, Lcom/huawei/hms/scankit/p/s$a;

    const-string v6, "HMCSHA256"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/huawei/hms/scankit/p/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/huawei/hms/scankit/p/s$a;->c:Lcom/huawei/hms/scankit/p/s$a;

    new-instance v3, Lcom/huawei/hms/scankit/p/s$a;

    const-string v6, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v3, v6, v8, v2}, Lcom/huawei/hms/scankit/p/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/huawei/hms/scankit/p/s$a;->d:Lcom/huawei/hms/scankit/p/s$a;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/huawei/hms/scankit/p/s$a;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v7

    aput-object v3, v6, v8

    sput-object v6, Lcom/huawei/hms/scankit/p/s$a;->e:[Lcom/huawei/hms/scankit/p/s$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/huawei/hms/scankit/p/s$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/s$a;
    .locals 1

    const-class v0, Lcom/huawei/hms/scankit/p/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/s$a;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/s$a;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/s$a;->e:[Lcom/huawei/hms/scankit/p/s$a;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/s$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/s$a;->f:I

    return v0
.end method
