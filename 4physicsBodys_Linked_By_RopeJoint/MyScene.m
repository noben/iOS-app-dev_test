//
//  MyScene.m
//  4physicsBodys_Linked_By_RopeJoint
//
//  Created by YG on 2/17/14.
//  Copyright (c) 2014 YuryGitman. All rights reserved.
//

//  Luming modified - ADD 6 more squares onto the sence, and ADD a snake onto the sence

#import "MyScene.h"

@interface MyScene()
@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
//added new here:
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* mySquare9;
@property SKSpriteNode* mySquare10;

@property SKSpriteNode* myShelf;
@property SKPhysicsJoint* myRopeJoint;
@property SKPhysicsJoint* myRopeJoint1;
@property SKPhysicsJoint* myRopeJoint2;
//----------added 5 more joints:-----------
@property SKPhysicsJoint* myRopeJoint3;
@property SKPhysicsJoint* myRopeJoint4;
@property SKPhysicsJoint* myRopeJoint5;
@property SKPhysicsJoint* myRopeJoint6;
@property SKPhysicsJoint* myRopeJoint7;
@property SKPhysicsJoint* myRopeJoint8;

//------Build a snake from here:-----------
//build a snake Body Nodes:
@property SKSpriteNode* mySnake1;
@property SKSpriteNode* mySnake2;
@property SKSpriteNode* mySnake3;
@property SKSpriteNode* mySnake4;
@property SKSpriteNode* mySnake5;
@property SKSpriteNode* mySnake6;
@property SKSpriteNode* mySnake7;
//build a snake joints:
@property SKPhysicsJoint* mySnakeJoint1;
@property SKPhysicsJoint* mySnakeJoint2;
@property SKPhysicsJoint* mySnakeJoint3;
@property SKPhysicsJoint* mySnakeJoint4;
@property SKPhysicsJoint* mySnakeJoint5;
@property SKPhysicsJoint* mySnakeJoint6;


@end

@implementation MyScene

-(void) activateJointRope{
    
    _myRopeJoint = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    
    [self.physicsWorld addJoint:_myRopeJoint];
    
    _myRopeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    
    _myRopeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
    
    [self.physicsWorld addJoint:_myRopeJoint2];
    
    //------------------added joints between newly added squares:-------------------------------
    _myRopeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare4.position anchorB:_mySquare5.position];
    
    [self.physicsWorld addJoint:_myRopeJoint3];
    
    _myRopeJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchorA:_mySquare5.position anchorB:_mySquare6.position];
    
    [self.physicsWorld addJoint:_myRopeJoint4];
    
    _myRopeJoint5 = [SKPhysicsJointLimit jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchorA:_mySquare6.position anchorB:_mySquare7.position];
    
    [self.physicsWorld addJoint:_myRopeJoint5];
    
    _myRopeJoint6 = [SKPhysicsJointLimit jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchorA:_mySquare7.position anchorB:_mySquare8.position];
    
    [self.physicsWorld addJoint:_myRopeJoint6];
    
    _myRopeJoint7 = [SKPhysicsJointLimit jointWithBodyA:_mySquare8.physicsBody bodyB:_mySquare9.physicsBody anchorA:_mySquare8.position anchorB:_mySquare9.position];
    
    [self.physicsWorld addJoint:_myRopeJoint7];
    
    _myRopeJoint8 = [SKPhysicsJointLimit jointWithBodyA:_mySquare9.physicsBody bodyB:_mySquare10.physicsBody anchorA:_mySquare9.position anchorB:_mySquare10.position];
    
    [self.physicsWorld addJoint:_myRopeJoint8];
    
    
    //add joints for snake:
    _mySnakeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySnake1.physicsBody bodyB:_mySnake2.physicsBody anchorA:_mySnake1.position anchorB:_mySnake2.position];
    
    [self.physicsWorld addJoint:_mySnakeJoint1];
    
    _mySnakeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySnake2.physicsBody bodyB:_mySnake3.physicsBody anchorA:_mySnake2.position anchorB:_mySnake3.position];
    
    [self.physicsWorld addJoint:_mySnakeJoint2];
    
    _mySnakeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySnake3.physicsBody bodyB:_mySnake4.physicsBody anchorA:_mySnake3.position anchorB:_mySnake4.position];
    
    [self.physicsWorld addJoint:_mySnakeJoint3];
    
    _mySnakeJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySnake4.physicsBody bodyB:_mySnake5.physicsBody anchorA:_mySnake4.position anchorB:_mySnake5.position];
    
    [self.physicsWorld addJoint:_mySnakeJoint4];
    
    _mySnakeJoint5 = [SKPhysicsJointLimit jointWithBodyA:_mySnake5.physicsBody bodyB:_mySnake6.physicsBody anchorA:_mySnake6.position anchorB:_mySnake6.position];
    
    [self.physicsWorld addJoint:_mySnakeJoint5];
    
    _mySnakeJoint6 = [SKPhysicsJointLimit jointWithBodyA:_mySnake6.physicsBody bodyB:_mySnake7.physicsBody anchorA:_mySnake6.position anchorB:_mySnake7.position];
    
    [self.physicsWorld addJoint:_mySnakeJoint6];
    
}

-(void) spawnSquares{
    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(70, 70)];
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(70, 70)];
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(70, 70)];
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(70, 70)];
    //new squares added here:
    _mySquare5 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(70, 70)];
    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(70, 70)];
    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(70, 70)];
    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(70, 70)];
    _mySquare9 =[[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(70, 70)];
    _mySquare10 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(70, 70)];
    
    //add a snake body here:
    _mySnake1 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(10, 10)];
    _mySnake2 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(10, 10)];
    _mySnake3 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(10, 10)];
    _mySnake4 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(10, 10)];
    _mySnake5 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(10, 10)];
    _mySnake6 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(10, 10)];
    _mySnake7 = [[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(10, 10)];
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.5)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3)];
    //new here:
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.5)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3)];
    [_mySquare9 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySquare10 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    
    //add snake body positions:
    [_mySnake1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySnake2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySnake3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySnake4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySnake5 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySnake6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySnake7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    
    
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    //new here:
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    _mySquare9.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare9.size];
    _mySquare10.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare10.size];
    
    //snake:
    _mySnake1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySnake1.size];
    _mySnake2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySnake2.size];
    _mySnake3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySnake3.size];
    _mySnake4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySnake4.size];
    _mySnake5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySnake5.size];
    _mySnake6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySnake6.size];
    _mySnake7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySnake7.size];
    
    
    [_mySquare1.physicsBody setRestitution:1.0];
    [_mySquare2.physicsBody setRestitution:1.0];
    [_mySquare3.physicsBody setRestitution:1.0];
    [_mySquare4.physicsBody setRestitution:1.0];
    //new here:
    [_mySquare5.physicsBody setRestitution:1.0];
    [_mySquare6.physicsBody setRestitution:1.0];
    [_mySquare7.physicsBody setRestitution:1.0];
    [_mySquare8.physicsBody setRestitution:1.0];
    [_mySquare9.physicsBody setRestitution:1.0];
    [_mySquare10.physicsBody setRestitution:1.0];
    
    //snake:
    [_mySnake1.physicsBody setRestitution:1.0];
    [_mySnake2.physicsBody setRestitution:1.0];
    [_mySnake3.physicsBody setRestitution:1.0];
    [_mySnake4.physicsBody setRestitution:1.0];
    [_mySnake5.physicsBody setRestitution:1.0];
    [_mySnake6.physicsBody setRestitution:1.0];
    [_mySnake7.physicsBody setRestitution:1.0];
    
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    //add new squares:
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    [self addChild:_mySquare9];
    [self addChild:_mySquare10];
    
    //snake:
    [self addChild:_mySnake1];
    [self addChild:_mySnake2];
    [self addChild:_mySnake3];
    [self addChild:_mySnake4];
    [self addChild:_mySnake5];
    [self addChild:_mySnake6];
    [self addChild:_mySnake7];
}

-(void)makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor lightGrayColor] size:CGSizeMake(100, 40)];
    _myShelf.position = CGPointMake(self.size.width/2.4, self.size.height/2);
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    [_myShelf.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf];
    
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
        [self makeShelf];
        
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
        
        // [_mySquare1.physicsBody setDynamic:NO];
        //  [_mySquare2.physicsBody setDynamic:NO];
        
    }
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    
    //snake:
    if (!_mySnake1.physicsBody.dynamic) {
        [_mySnake1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    
    //snake:
    if (!_mySnake1.physicsBody.dynamic) {
        [_mySnake1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}


-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
