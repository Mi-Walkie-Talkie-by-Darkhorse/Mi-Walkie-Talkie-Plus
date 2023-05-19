.class final enum Lcom/xiaomi/accountsdk/diagnosis/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/diagnosis/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/diagnosis/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/accountsdk/diagnosis/f$a;

.field public static final enum b:Lcom/xiaomi/accountsdk/diagnosis/f$a;

.field private static final synthetic c:[Lcom/xiaomi/accountsdk/diagnosis/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/f$a;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/diagnosis/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/diagnosis/f$a;->a:Lcom/xiaomi/accountsdk/diagnosis/f$a;

    new-instance v1, Lcom/xiaomi/accountsdk/diagnosis/f$a;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/accountsdk/diagnosis/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/accountsdk/diagnosis/f$a;->b:Lcom/xiaomi/accountsdk/diagnosis/f$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaomi/accountsdk/diagnosis/f$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/xiaomi/accountsdk/diagnosis/f$a;->c:[Lcom/xiaomi/accountsdk/diagnosis/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/diagnosis/f$a;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/diagnosis/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/diagnosis/f$a;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/diagnosis/f$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/f$a;->c:[Lcom/xiaomi/accountsdk/diagnosis/f$a;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/diagnosis/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/diagnosis/f$a;

    return-object v0
.end method
