.class public final enum Lcom/shanlitech/et/web/LoginType;
.super Ljava/lang/Enum;
.source "LoginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/web/LoginType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/shanlitech/et/web/LoginType;

.field public static final enum c:Lcom/shanlitech/et/web/LoginType;

.field public static final enum d:Lcom/shanlitech/et/web/LoginType;

.field public static final enum e:Lcom/shanlitech/et/web/LoginType;

.field private static final synthetic f:[Lcom/shanlitech/et/web/LoginType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/LoginType;

    const-string v1, "PWD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shanlitech/et/web/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shanlitech/et/web/LoginType;->b:Lcom/shanlitech/et/web/LoginType;

    new-instance v1, Lcom/shanlitech/et/web/LoginType;

    const-string v3, "SMS_CODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shanlitech/et/web/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shanlitech/et/web/LoginType;->c:Lcom/shanlitech/et/web/LoginType;

    new-instance v3, Lcom/shanlitech/et/web/LoginType;

    const-string v5, "SSO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shanlitech/et/web/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shanlitech/et/web/LoginType;->d:Lcom/shanlitech/et/web/LoginType;

    new-instance v5, Lcom/shanlitech/et/web/LoginType;

    const-string v7, "PWD_TOKEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shanlitech/et/web/LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shanlitech/et/web/LoginType;->e:Lcom/shanlitech/et/web/LoginType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shanlitech/et/web/LoginType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lcom/shanlitech/et/web/LoginType;->f:[Lcom/shanlitech/et/web/LoginType;

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
    iput p3, p0, Lcom/shanlitech/et/web/LoginType;->a:I

    return-void
.end method

.method public static a(I)Lcom/shanlitech/et/web/LoginType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/shanlitech/et/web/LoginType;->b:Lcom/shanlitech/et/web/LoginType;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/shanlitech/et/web/LoginType;->e:Lcom/shanlitech/et/web/LoginType;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/shanlitech/et/web/LoginType;->d:Lcom/shanlitech/et/web/LoginType;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/shanlitech/et/web/LoginType;->c:Lcom/shanlitech/et/web/LoginType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/web/LoginType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/web/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/web/LoginType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/web/LoginType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/LoginType;->f:[Lcom/shanlitech/et/web/LoginType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/web/LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/web/LoginType;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/web/LoginType;->a:I

    return v0
.end method
