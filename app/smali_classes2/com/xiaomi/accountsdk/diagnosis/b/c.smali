.class public final enum Lcom/xiaomi/accountsdk/diagnosis/b/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/diagnosis/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/diagnosis/b/c;

.field public static final enum b:Lcom/xiaomi/accountsdk/diagnosis/b/c;

.field public static final enum c:Lcom/xiaomi/accountsdk/diagnosis/b/c;

.field public static final enum d:Lcom/xiaomi/accountsdk/diagnosis/b/c;

.field public static final enum e:Lcom/xiaomi/accountsdk/diagnosis/b/c;

.field private static final synthetic g:[Lcom/xiaomi/accountsdk/diagnosis/b/c;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/b/c;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const-string v3, "V"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/diagnosis/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->a:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    new-instance v1, Lcom/xiaomi/accountsdk/diagnosis/b/c;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    const-string v5, "D"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/accountsdk/diagnosis/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/accountsdk/diagnosis/b/c;->b:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    new-instance v3, Lcom/xiaomi/accountsdk/diagnosis/b/c;

    const-string v5, "INFO"

    const/4 v6, 0x2

    const-string v7, "I"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/accountsdk/diagnosis/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/accountsdk/diagnosis/b/c;->c:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    new-instance v5, Lcom/xiaomi/accountsdk/diagnosis/b/c;

    const-string v7, "WARN"

    const/4 v8, 0x3

    const-string v9, "W"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/accountsdk/diagnosis/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaomi/accountsdk/diagnosis/b/c;->d:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    new-instance v7, Lcom/xiaomi/accountsdk/diagnosis/b/c;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    const-string v11, "E"

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/accountsdk/diagnosis/b/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaomi/accountsdk/diagnosis/b/c;->e:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/accountsdk/diagnosis/b/c;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/xiaomi/accountsdk/diagnosis/b/c;->g:[Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/xiaomi/accountsdk/diagnosis/b/c;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->a:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->e:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-object p0

    :cond_1
    sget-object p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->d:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-object p0

    :cond_2
    sget-object p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->c:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-object p0

    :cond_3
    sget-object p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->b:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-object p0

    :cond_4
    sget-object p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->a:Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/diagnosis/b/c;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/diagnosis/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/diagnosis/b/c;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->g:[Lcom/xiaomi/accountsdk/diagnosis/b/c;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/diagnosis/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/diagnosis/b/c;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/b/c;->f:Ljava/lang/String;

    return-object v0
.end method
