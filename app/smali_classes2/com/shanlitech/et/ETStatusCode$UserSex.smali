.class public final enum Lcom/shanlitech/et/ETStatusCode$UserSex;
.super Ljava/lang/Enum;
.source "ETStatusCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/ETStatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserSex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/ETStatusCode$UserSex;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/shanlitech/et/ETStatusCode$UserSex;

.field public static final enum c:Lcom/shanlitech/et/ETStatusCode$UserSex;

.field public static final enum d:Lcom/shanlitech/et/ETStatusCode$UserSex;

.field private static final synthetic e:[Lcom/shanlitech/et/ETStatusCode$UserSex;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shanlitech/et/ETStatusCode$UserSex;

    const-string v1, "BOY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/shanlitech/et/ETStatusCode$UserSex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/ETStatusCode$UserSex;->b:Lcom/shanlitech/et/ETStatusCode$UserSex;

    new-instance v1, Lcom/shanlitech/et/ETStatusCode$UserSex;

    const-string v4, "GRIL"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/shanlitech/et/ETStatusCode$UserSex;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/ETStatusCode$UserSex;->c:Lcom/shanlitech/et/ETStatusCode$UserSex;

    new-instance v4, Lcom/shanlitech/et/ETStatusCode$UserSex;

    const-string v6, "SECRET"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/shanlitech/et/ETStatusCode$UserSex;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/shanlitech/et/ETStatusCode$UserSex;->d:Lcom/shanlitech/et/ETStatusCode$UserSex;

    new-array v6, v7, [Lcom/shanlitech/et/ETStatusCode$UserSex;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 2
    sput-object v6, Lcom/shanlitech/et/ETStatusCode$UserSex;->e:[Lcom/shanlitech/et/ETStatusCode$UserSex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shanlitech/et/ETStatusCode$UserSex;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/ETStatusCode$UserSex;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/ETStatusCode$UserSex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/ETStatusCode$UserSex;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/ETStatusCode$UserSex;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/ETStatusCode$UserSex;->e:[Lcom/shanlitech/et/ETStatusCode$UserSex;

    invoke-virtual {v0}, [Lcom/shanlitech/et/ETStatusCode$UserSex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/ETStatusCode$UserSex;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/ETStatusCode$UserSex;->a:I

    return v0
.end method
