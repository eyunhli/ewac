<%@ page contentType="text/html; charset=utf-8"%>
<div class="main_content">
                
                  <div class="tabbable">
                    <ul class="nav nav-tabs">
                      <li class="active"><a href="#tab1" data-toggle="tab">Group 1</a></li>
                      <li><a href="#tab2" data-toggle="tab">Group 2</a></li>
                      <li><a href="#tab3" data-toggle="tab">Group 3</a></li>
                      <li><a href="#tab4" data-toggle="tab">Group 4</a></li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane active" id="tab1">
                      <div class="formSep">
                        <span class="span3"><b>Current Time</b></span>
                        <%= new java.util.Date()%>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule Radio On/Off</b></span>										
						<input type="radio" value="0" name="schedule_radio" checked/>on
						<input type="radio" value="1" name="schedule_radio" />off
											 
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule at</b></span>
                        hrs:
                        <select id="hrs" name="hrs"  style="width:80px;">
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                        mins:
						<select id="mins" name="mins" style="width:80px;">
	                        <option>0</option>
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                        <option>10</option>
	                        <option>11</option>
	                        <option>12</option>
	                        <option>13</option>
	                        <option>14</option>
	                        <option>15</option>
	                        <option>16</option>
	                        <option>17</option>
	                        <option>18</option>
	                        <option>19</option>
	                        <option>20</option>
	                        <option>21</option>
	                        <option>22</option>
	                        <option>23</option>
	                        <option>24</option>
	                        <option>25</option>
	                        <option>26</option>
	                        <option>27</option>
	                        <option>28</option>
	                        <option>29</option>
	                        <option>30</option>
	                        <option>31</option>
	                        <option>32</option>
	                        <option>33</option>
	                        <option>34</option>
	                        <option>35</option>
	                        <option>36</option>
	                        <option>37</option>
	                        <option>38</option>
	                        <option>39</option>
	                        <option>40</option>
	                        <option>41</option>
	                        <option>42</option>
	                        <option>43</option>
	                        <option>44</option>
	                        <option>45</option>
	                        <option>46</option>
	                        <option>47</option>
	                        <option>48</option>
	                        <option>49</option>
	                        <option>50</option>
	                        <option>51</option>
	                        <option>52</option>
	                        <option>53</option>
	                        <option>54</option>
	                        <option>55</option>
	                        <option>56</option>
	                        <option>57</option>
	                        <option>58</option>
	                        <option>59</option>
                      </select>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule On</b></span>
                       
						<input type="checkbox" value="1" id="schedule" name="schedule" />m 
						<input type="checkbox" value="2" id="schedule" name="schedule" />t 
						<input type="checkbox" value="3" id="schedule" name="schedule" />w  
						<input type="checkbox" value="4" id="schedule" name="schedule" />t 
						<input type="checkbox" value="5" id="schedule" name="schedule" />f 
						<input type="checkbox" value="6" id="schedule" name="schedule" />s 
						<input type="checkbox" value="7" id="schedule" name="schedule" />s 
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>Duration</b></span>
                        hrs:
                        <select style="width:80px;" id="d_hrs" name="d_hrs" >
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                        mins:
						<select id="d_mins" name="d_mins" style="width:80px;">
	                        <option>0</option>
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                        <option>10</option>
	                        <option>11</option>
	                        <option>12</option>
	                        <option>13</option>
	                        <option>14</option>
	                        <option>15</option>
	                        <option>16</option>
	                        <option>17</option>
	                        <option>18</option>
	                        <option>19</option>
	                        <option>20</option>
	                        <option>21</option>
	                        <option>22</option>
	                        <option>23</option>
	                        <option>24</option>
	                        <option>25</option>
	                        <option>26</option>
	                        <option>27</option>
	                        <option>28</option>
	                        <option>29</option>
	                        <option>30</option>
	                        <option>31</option>
	                        <option>32</option>
	                        <option>33</option>
	                        <option>34</option>
	                        <option>35</option>
	                        <option>36</option>
	                        <option>37</option>
	                        <option>38</option>
	                        <option>39</option>
	                        <option>40</option>
	                        <option>41</option>
	                        <option>42</option>
	                        <option>43</option>
	                        <option>44</option>
	                        <option>45</option>
	                        <option>46</option>
	                        <option>47</option>
	                        <option>48</option>
	                        <option>49</option>
	                        <option>50</option>
	                        <option>51</option>
	                        <option>52</option>
	                        <option>53</option>
	                        <option>54</option>
	                        <option>55</option>
	                        <option>56</option>
	                        <option>57</option>
	                        <option>58</option>
	                        <option>59</option>
                        </select>
                      </div>
                      </div>
                      <div class="tab-pane" id="tab2">
                      <div class="formSep">
                        <span class="span3"><b>Current Time</b></span>
                        <%= new java.util.Date()%>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule Radio On/Off</b></span>										
						<input type="radio" value="0" name="schedule_radio1" checked/>on
						<input type="radio" value="1" name="schedule_radio1" />off
											 
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule at</b></span>
                        hrs:
                        <select id="hrs1" name="hrs1"  style="width:80px;">
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                        mins:
						<select id="mins1" name="mins1" style="width:80px;">
	                        <option>0</option>
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                        <option>10</option>
	                        <option>11</option>
	                        <option>12</option>
	                        <option>13</option>
	                        <option>14</option>
	                        <option>15</option>
	                        <option>16</option>
	                        <option>17</option>
	                        <option>18</option>
	                        <option>19</option>
	                        <option>20</option>
	                        <option>21</option>
	                        <option>22</option>
	                        <option>23</option>
	                        <option>24</option>
	                        <option>25</option>
	                        <option>26</option>
	                        <option>27</option>
	                        <option>28</option>
	                        <option>29</option>
	                        <option>30</option>
	                        <option>31</option>
	                        <option>32</option>
	                        <option>33</option>
	                        <option>34</option>
	                        <option>35</option>
	                        <option>36</option>
	                        <option>37</option>
	                        <option>38</option>
	                        <option>39</option>
	                        <option>40</option>
	                        <option>41</option>
	                        <option>42</option>
	                        <option>43</option>
	                        <option>44</option>
	                        <option>45</option>
	                        <option>46</option>
	                        <option>47</option>
	                        <option>48</option>
	                        <option>49</option>
	                        <option>50</option>
	                        <option>51</option>
	                        <option>52</option>
	                        <option>53</option>
	                        <option>54</option>
	                        <option>55</option>
	                        <option>56</option>
	                        <option>57</option>
	                        <option>58</option>
	                        <option>59</option>
                      </select>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule On</b></span>
                       
						<input type="checkbox" value="1" id="schedule1" name="schedule1" />m 
						<input type="checkbox" value="2" id="schedule1" name="schedule1" />t 
						<input type="checkbox" value="3" id="schedule1" name="schedule1" />w  
						<input type="checkbox" value="4" id="schedule1" name="schedule1" />t 
						<input type="checkbox" value="5" id="schedule1" name="schedule1" />f 
						<input type="checkbox" value="6" id="schedule1" name="schedule1" />s 
						<input type="checkbox" value="7" id="schedule1" name="schedule1" />s 
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>Duration</b></span>
                        hrs:
                        <select style="width:80px;" id="d_hrs1" name="d_hrs1" >
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                        mins:
						<select id="d_mins1" name="d_mins1" style="width:80px;">
	                        <option>0</option>
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                        <option>10</option>
	                        <option>11</option>
	                        <option>12</option>
	                        <option>13</option>
	                        <option>14</option>
	                        <option>15</option>
	                        <option>16</option>
	                        <option>17</option>
	                        <option>18</option>
	                        <option>19</option>
	                        <option>20</option>
	                        <option>21</option>
	                        <option>22</option>
	                        <option>23</option>
	                        <option>24</option>
	                        <option>25</option>
	                        <option>26</option>
	                        <option>27</option>
	                        <option>28</option>
	                        <option>29</option>
	                        <option>30</option>
	                        <option>31</option>
	                        <option>32</option>
	                        <option>33</option>
	                        <option>34</option>
	                        <option>35</option>
	                        <option>36</option>
	                        <option>37</option>
	                        <option>38</option>
	                        <option>39</option>
	                        <option>40</option>
	                        <option>41</option>
	                        <option>42</option>
	                        <option>43</option>
	                        <option>44</option>
	                        <option>45</option>
	                        <option>46</option>
	                        <option>47</option>
	                        <option>48</option>
	                        <option>49</option>
	                        <option>50</option>
	                        <option>51</option>
	                        <option>52</option>
	                        <option>53</option>
	                        <option>54</option>
	                        <option>55</option>
	                        <option>56</option>
	                        <option>57</option>
	                        <option>58</option>
	                        <option>59</option>
                        </select>
                      </div>
                       </div>
                      <div class="tab-pane" id="tab3">
                      <div class="formSep">
                        <span class="span3"><b>Current Time</b></span>
                        <%= new java.util.Date()%>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule Radio On/Off</b></span>										
						<input type="radio" value="0" name="schedule_radio2" checked/>on
						<input type="radio" value="1" name="schedule_radio2" />off
											 
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule at</b></span>
                        hrs:
                        <select id="hrs2" name="hrs2"  style="width:80px;">
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                        mins:
						<select id="mins2" name="mins2" style="width:80px;">
	                        <option>0</option>
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                        <option>10</option>
	                        <option>11</option>
	                        <option>12</option>
	                        <option>13</option>
	                        <option>14</option>
	                        <option>15</option>
	                        <option>16</option>
	                        <option>17</option>
	                        <option>18</option>
	                        <option>19</option>
	                        <option>20</option>
	                        <option>21</option>
	                        <option>22</option>
	                        <option>23</option>
	                        <option>24</option>
	                        <option>25</option>
	                        <option>26</option>
	                        <option>27</option>
	                        <option>28</option>
	                        <option>29</option>
	                        <option>30</option>
	                        <option>31</option>
	                        <option>32</option>
	                        <option>33</option>
	                        <option>34</option>
	                        <option>35</option>
	                        <option>36</option>
	                        <option>37</option>
	                        <option>38</option>
	                        <option>39</option>
	                        <option>40</option>
	                        <option>41</option>
	                        <option>42</option>
	                        <option>43</option>
	                        <option>44</option>
	                        <option>45</option>
	                        <option>46</option>
	                        <option>47</option>
	                        <option>48</option>
	                        <option>49</option>
	                        <option>50</option>
	                        <option>51</option>
	                        <option>52</option>
	                        <option>53</option>
	                        <option>54</option>
	                        <option>55</option>
	                        <option>56</option>
	                        <option>57</option>
	                        <option>58</option>
	                        <option>59</option>
                      </select>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule On</b></span>
                       
						<input type="checkbox" value="1" id="schedule2" name="schedule2" />m 
						<input type="checkbox" value="2" id="schedule2" name="schedule2" />t 
						<input type="checkbox" value="3" id="schedule2" name="schedule2" />w  
						<input type="checkbox" value="4" id="schedule2" name="schedule2" />t 
						<input type="checkbox" value="5" id="schedule2" name="schedule2" />f 
						<input type="checkbox" value="6" id="schedule2" name="schedule2" />s 
						<input type="checkbox" value="7" id="schedule2" name="schedule2" />s 
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>Duration</b></span>
                        hrs:
                        <select style="width:80px;" id="d_hrs2" name="d_hrs2" >
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                        mins:
						<select id="d_mins2" name="d_mins2" style="width:80px;">
	                        <option>0</option>
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                        <option>10</option>
	                        <option>11</option>
	                        <option>12</option>
	                        <option>13</option>
	                        <option>14</option>
	                        <option>15</option>
	                        <option>16</option>
	                        <option>17</option>
	                        <option>18</option>
	                        <option>19</option>
	                        <option>20</option>
	                        <option>21</option>
	                        <option>22</option>
	                        <option>23</option>
	                        <option>24</option>
	                        <option>25</option>
	                        <option>26</option>
	                        <option>27</option>
	                        <option>28</option>
	                        <option>29</option>
	                        <option>30</option>
	                        <option>31</option>
	                        <option>32</option>
	                        <option>33</option>
	                        <option>34</option>
	                        <option>35</option>
	                        <option>36</option>
	                        <option>37</option>
	                        <option>38</option>
	                        <option>39</option>
	                        <option>40</option>
	                        <option>41</option>
	                        <option>42</option>
	                        <option>43</option>
	                        <option>44</option>
	                        <option>45</option>
	                        <option>46</option>
	                        <option>47</option>
	                        <option>48</option>
	                        <option>49</option>
	                        <option>50</option>
	                        <option>51</option>
	                        <option>52</option>
	                        <option>53</option>
	                        <option>54</option>
	                        <option>55</option>
	                        <option>56</option>
	                        <option>57</option>
	                        <option>58</option>
	                        <option>59</option>
                        </select>
                      </div>
                       </div>
                      <div class="tab-pane" id="tab4">
                      <div class="formSep">
                        <span class="span3"><b>Current Time</b></span>
                        <%= new java.util.Date()%>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule Radio On/Off</b></span>										
						<input type="radio" value="0" name="schedule_radio3" checked/>on
						<input type="radio" value="1" name="schedule_radio3" />off
											 
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule at</b></span>
                        hrs:
                        <select id="hrs3" name="hrs3"  style="width:80px;">
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                        mins:
						<select id="mins3" name="mins3" style="width:80px;">
	                        <option>0</option>
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                        <option>10</option>
	                        <option>11</option>
	                        <option>12</option>
	                        <option>13</option>
	                        <option>14</option>
	                        <option>15</option>
	                        <option>16</option>
	                        <option>17</option>
	                        <option>18</option>
	                        <option>19</option>
	                        <option>20</option>
	                        <option>21</option>
	                        <option>22</option>
	                        <option>23</option>
	                        <option>24</option>
	                        <option>25</option>
	                        <option>26</option>
	                        <option>27</option>
	                        <option>28</option>
	                        <option>29</option>
	                        <option>30</option>
	                        <option>31</option>
	                        <option>32</option>
	                        <option>33</option>
	                        <option>34</option>
	                        <option>35</option>
	                        <option>36</option>
	                        <option>37</option>
	                        <option>38</option>
	                        <option>39</option>
	                        <option>40</option>
	                        <option>41</option>
	                        <option>42</option>
	                        <option>43</option>
	                        <option>44</option>
	                        <option>45</option>
	                        <option>46</option>
	                        <option>47</option>
	                        <option>48</option>
	                        <option>49</option>
	                        <option>50</option>
	                        <option>51</option>
	                        <option>52</option>
	                        <option>53</option>
	                        <option>54</option>
	                        <option>55</option>
	                        <option>56</option>
	                        <option>57</option>
	                        <option>58</option>
	                        <option>59</option>
                      </select>
                      </div>
                      <div class="formSep">
                        <span class="span3"><b>Schedule On</b></span>
                       
						<input type="checkbox" value="1" id="schedule3" name="schedule3" />m 
						<input type="checkbox" value="2" id="schedule3" name="schedule3" />t 
						<input type="checkbox" value="3" id="schedule3" name="schedule3" />w  
						<input type="checkbox" value="4" id="schedule3" name="schedule3" />t 
						<input type="checkbox" value="5" id="schedule3" name="schedule3" />f 
						<input type="checkbox" value="6" id="schedule3" name="schedule3" />s 
						<input type="checkbox" value="7" id="schedule3" name="schedule3" />s 
                        </div>
                      <div class="formSep">
                        <span class="span3"><b>Duration</b></span>
                        hrs:
                        <select style="width:80px;" id="d_hrs3" name="d_hrs3" >
                          <option>0</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                        </select>
                        mins:
						<select id="d_mins3" name="d_mins3" style="width:80px;">
	                        <option>0</option>
	                        <option>1</option>
	                        <option>2</option>
	                        <option>3</option>
	                        <option>4</option>
	                        <option>5</option>
	                        <option>6</option>
	                        <option>7</option>
	                        <option>8</option>
	                        <option>9</option>
	                        <option>10</option>
	                        <option>11</option>
	                        <option>12</option>
	                        <option>13</option>
	                        <option>14</option>
	                        <option>15</option>
	                        <option>16</option>
	                        <option>17</option>
	                        <option>18</option>
	                        <option>19</option>
	                        <option>20</option>
	                        <option>21</option>
	                        <option>22</option>
	                        <option>23</option>
	                        <option>24</option>
	                        <option>25</option>
	                        <option>26</option>
	                        <option>27</option>
	                        <option>28</option>
	                        <option>29</option>
	                        <option>30</option>
	                        <option>31</option>
	                        <option>32</option>
	                        <option>33</option>
	                        <option>34</option>
	                        <option>35</option>
	                        <option>36</option>
	                        <option>37</option>
	                        <option>38</option>
	                        <option>39</option>
	                        <option>40</option>
	                        <option>41</option>
	                        <option>42</option>
	                        <option>43</option>
	                        <option>44</option>
	                        <option>45</option>
	                        <option>46</option>
	                        <option>47</option>
	                        <option>48</option>
	                        <option>49</option>
	                        <option>50</option>
	                        <option>51</option>
	                        <option>52</option>
	                        <option>53</option>
	                        <option>54</option>
	                        <option>55</option>
	                        <option>56</option>
	                        <option>57</option>
	                        <option>58</option>
	                        <option>59</option>
                        </select>
                      </div>
                       </div>                      
                    </div>
                  </div>
                   <div class="form-actions">
                  <button class="btn" type="submit">Cancel</button>
                  <button class="btn btn-primary" onclick="apply()" type="submit">Apply</button>
                </div>
        </div></div>

        
         <script type="text/javascript">
	 
	$.ajaxSetup ({
		cache: false 
	});
	
	function read() { 
		$.ajax({ url: "config/read.json?name=confing_advanced_radio",success: function(msg){
			var obj = JSON.parse(msg); 
			$("#hrs").val(obj.group1.hrs);
			$("#mins").val(obj.group1.mins);
			$("input[name='schedule_radio'][value="+obj.group1.schedule_radio+"]").attr("checked",true); 
			$("#d_hrs").val(obj.group1.d_hrs);
			$("#d_mins").val(obj.group1.d_mins);
			var schedule = obj.group1.schedule.split(",");
			for(i in schedule){
				$("input[name='schedule'][value="+schedule[i]+"]").attr("checked",true); 
			}
			
			$("#hrs1").val(obj.group2.hrs);
			$("#mins1").val(obj.group2.mins);
			$("input[name='schedule_radio1'][value="+obj.group2.schedule_radio+"]").attr("checked",true); 
			$("#d_hrs1").val(obj.group2.d_hrs);
			$("#d_mins1").val(obj.group2.d_mins);
			schedule = obj.group2.schedule.split(",");
			for(i in schedule){
				$("input[name='schedule1'][value="+schedule[i]+"]").attr("checked",true); 
			}
			
			$("#hrs2").val(obj.group3.hrs);
			$("#mins2").val(obj.group3.mins);
			$("input[name='schedule_radio2'][value="+obj.group3.schedule_radio+"]").attr("checked",true); 
			$("#d_hrs2").val(obj.group3.d_hrs);
			$("#d_mins2").val(obj.group3.d_mins);
			schedule = obj.group3.schedule.split(",");
			for(i in schedule){
				$("input[name='schedule2'][value="+schedule[i]+"]").attr("checked",true); 
			}
			$("#hrs3").val(obj.group4.hrs);
			$("#mins3").val(obj.group4.mins);
			$("input[name='schedule_radio3'][value="+obj.group4.schedule_radio+"]").attr("checked",true); 
			$("#d_hrs3").val(obj.group4.d_hrs);
			$("#d_mins3").val(obj.group4.d_mins);
			schedule = obj.group4.schedule.split(",");
			for(i in schedule){
				$("input[name='schedule3'][value="+schedule[i]+"]").attr("checked",true); 
			}
      	}}); 
	}  
	read();
	function apply() {  
		if($("#btnSubmit").attr('unable')=='true'){
			alert("请不要重复提交");
			return false;
		}
		$("#btnSubmit").attr('unable',true)
		
		var schedule = "";
		$("input[name='schedule']:checked").each(function(e) {
			if(schedule==""){
				schedule = this.value;
			}else{
				schedule += ","+this.value ;
			}
		});
		var schedule1 = "";
		$("input[name='schedule1']:checked").each(function(e) {
			if(schedule1==""){
				schedule1 = this.value;
			}else{
				schedule1 += ","+this.value ;
			}
		});
		var schedule2 = "";
		$("input[name='schedule2']:checked").each(function(e) {
			if(schedule2==""){
				schedule2 = this.value;
			}else{
				schedule2 += ","+this.value ;
			}
		});
		var schedule3 = "";
		$("input[name='schedule3']:checked").each(function(e) {
			if(schedule3==""){
				schedule3 = this.value;
			}else{
				schedule3 += ","+this.value ;
			}
		});
 		var content={"group1":{"hrs":$("#hrs").val(),
	 					"mins":$("#mins").val(),
	 					"schedule_radio":$("input[name='schedule_radio']:checked").attr("value"),
	 					"schedule":schedule,
	 					"d_hrs":$("#d_hrs").val(),
	 					"d_mins":$("#d_mins").val()},
 					"group2":{"hrs":$("#hrs1").val(),
	 					"mins":$("#mins1").val(),
	 					"schedule_radio":$("input[name='schedule_radio1']:checked").attr("value"),
	 					"schedule":schedule1,
	 					"d_hrs":$("#d_hrs1").val(),
	 					"d_mins":$("#d_mins1").val()},
 					"group3":{"hrs":$("#hrs2").val(),
	 					"mins":$("#mins2").val(),
	 					"schedule_radio":$("input[name='schedule_radio2']:checked").attr("value"),
	 					"schedule":schedule2,
	 					"d_hrs":$("#d_hrs2").val(),
	 					"d_mins":$("#d_mins2").val()},
 					"group4":{"hrs":$("#hrs3").val(),
	 					"mins":$("#mins3").val(),
	 					"schedule_radio":$("input[name='schedule_radio3']:checked").attr("value"),
	 					"schedule":schedule3,
	 					"d_hrs":$("#d_hrs3").val(),
	 					"d_mins":$("#d_mins3").val()},
 					};
		$.ajax({                                               
    		type: "POST",                                     
   	 		url: "config/save.json",                                    
    		data: "name=confing_advanced_radio&type=config&json="+ JSON.stringify(content), 
    		success: function(msg){                 
      			alert("apply success"); 
    		}
		});
	}  
</script>