.class public final enum Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;
.super Ljava/lang/Enum;
.source "QMUIFragmentEffectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandlePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

.field public static final enum b:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

.field public static final enum c:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

.field private static final synthetic d:[Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    const/4 v1, 0x0

    const-string v2, "Immediately"

    invoke-direct {v0, v2, v1}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    const/4 v2, 0x1

    const-string v3, "ImmediatelyIfStarted"

    invoke-direct {v0, v3, v2}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->b:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    const/4 v3, 0x2

    const-string v4, "NextStartEvent"

    invoke-direct {v0, v4, v3}, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->c:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    .line 4
    sget-object v5, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->a:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    aput-object v5, v4, v1

    sget-object v1, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->b:Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->d:[Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    return-object p0
.end method

.method public static values()[Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->d:[Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    invoke-virtual {v0}, [Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qmuiteam/qmui/arch/effect/QMUIFragmentEffectHandler$HandlePolicy;

    return-object v0
.end method
