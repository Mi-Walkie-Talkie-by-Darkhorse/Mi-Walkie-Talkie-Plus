.class final enum Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LifecycleImpact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

.field public static final enum REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 2
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v2, 0x1

    const-string v3, "ADDING"

    invoke-direct {v0, v3, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 3
    new-instance v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v3, 0x2

    const-string v4, "REMOVING"

    invoke-direct {v0, v4, v3}, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    const/4 v4, 0x3

    new-array v4, v4, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 4
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    aput-object v5, v4, v1

    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 1

    .line 1
    const-class v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 1

    .line 1
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->$VALUES:[Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v0}, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object v0
.end method
