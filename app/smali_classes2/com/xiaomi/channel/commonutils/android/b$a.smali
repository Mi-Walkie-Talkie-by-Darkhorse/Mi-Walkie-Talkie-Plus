.class public final enum Lcom/xiaomi/channel/commonutils/android/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/commonutils/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/channel/commonutils/android/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/channel/commonutils/android/b$a;

.field public static final enum b:Lcom/xiaomi/channel/commonutils/android/b$a;

.field public static final enum c:Lcom/xiaomi/channel/commonutils/android/b$a;

.field private static final synthetic e:[Lcom/xiaomi/channel/commonutils/android/b$a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/b$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/channel/commonutils/android/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/b$a;->a:Lcom/xiaomi/channel/commonutils/android/b$a;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/b$a;

    const-string v1, "ALLOWED"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/channel/commonutils/android/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/b$a;->b:Lcom/xiaomi/channel/commonutils/android/b$a;

    new-instance v0, Lcom/xiaomi/channel/commonutils/android/b$a;

    const-string v1, "NOT_ALLOWED"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/channel/commonutils/android/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/b$a;->c:Lcom/xiaomi/channel/commonutils/android/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/channel/commonutils/android/b$a;

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/b$a;->a:Lcom/xiaomi/channel/commonutils/android/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/b$a;->b:Lcom/xiaomi/channel/commonutils/android/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/channel/commonutils/android/b$a;->c:Lcom/xiaomi/channel/commonutils/android/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/channel/commonutils/android/b$a;->e:[Lcom/xiaomi/channel/commonutils/android/b$a;

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

    iput p3, p0, Lcom/xiaomi/channel/commonutils/android/b$a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/channel/commonutils/android/b$a;
    .locals 1

    const-class v0, Lcom/xiaomi/channel/commonutils/android/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/commonutils/android/b$a;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/channel/commonutils/android/b$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/channel/commonutils/android/b$a;->e:[Lcom/xiaomi/channel/commonutils/android/b$a;

    invoke-virtual {v0}, [Lcom/xiaomi/channel/commonutils/android/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/channel/commonutils/android/b$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/channel/commonutils/android/b$a;->d:I

    return v0
.end method
