.class public final enum Lcom/afollestad/materialdialogs/GravityEnum;
.super Ljava/lang/Enum;
.source "GravityEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/afollestad/materialdialogs/GravityEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/afollestad/materialdialogs/GravityEnum;

.field public static final enum b:Lcom/afollestad/materialdialogs/GravityEnum;

.field public static final enum c:Lcom/afollestad/materialdialogs/GravityEnum;

.field private static final d:Z

.field private static final synthetic e:[Lcom/afollestad/materialdialogs/GravityEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/afollestad/materialdialogs/GravityEnum;

    const-string v3, "START"

    invoke-direct {v2, v3, v1}, Lcom/afollestad/materialdialogs/GravityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    new-instance v2, Lcom/afollestad/materialdialogs/GravityEnum;

    const-string v3, "CENTER"

    invoke-direct {v2, v3, v0}, Lcom/afollestad/materialdialogs/GravityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->b:Lcom/afollestad/materialdialogs/GravityEnum;

    new-instance v2, Lcom/afollestad/materialdialogs/GravityEnum;

    const-string v3, "END"

    invoke-direct {v2, v3, v4}, Lcom/afollestad/materialdialogs/GravityEnum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v3, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    aput-object v3, v2, v1

    sget-object v3, Lcom/afollestad/materialdialogs/GravityEnum;->b:Lcom/afollestad/materialdialogs/GravityEnum;

    aput-object v3, v2, v0

    sget-object v3, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    aput-object v3, v2, v4

    sput-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->e:[Lcom/afollestad/materialdialogs/GravityEnum;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    :goto_0
    sput-boolean v0, Lcom/afollestad/materialdialogs/GravityEnum;->d:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
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

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/GravityEnum;
    .locals 1

    const-class v0, Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/GravityEnum;

    return-object v0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/GravityEnum;
    .locals 1

    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->e:[Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/GravityEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/GravityEnum;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum$1;->a:[I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid gravity constant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-boolean v0, Lcom/afollestad/materialdialogs/GravityEnum;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x800003

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/afollestad/materialdialogs/GravityEnum;->d:Z

    if-eqz v0, :cond_1

    const v0, 0x800005

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum$1;->a:[I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
