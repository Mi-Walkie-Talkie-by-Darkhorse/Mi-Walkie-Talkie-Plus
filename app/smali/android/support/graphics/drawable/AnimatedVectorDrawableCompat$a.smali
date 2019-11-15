.class Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroid/support/graphics/drawable/VectorDrawableCompat;

.field c:Landroid/animation/AnimatorSet;

.field d:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p2, :cond_3

    iget v0, p2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->a:I

    iput v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->a:I

    iget-object v0, p2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    :goto_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, p3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    iget-object v2, p2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Z)V

    :cond_0
    iget-object v0, p2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->e:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->d:Landroid/support/v4/util/ArrayMap;

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p2, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v4, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->b:Landroid/support/graphics/drawable/VectorDrawableCompat;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->a()V

    :cond_3
    return-void
.end method

.method static synthetic a(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->e:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->c:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->c:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->c:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$a;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No constant state support for SDK < 24."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
